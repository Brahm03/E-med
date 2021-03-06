import 'package:emed/pages/home/cubit/home_cubit.dart';
import 'package:emed/pages/home/state/home_state.dart';
import 'package:emed/pages/home/view/pages/booking/bookingpage.dart';
import 'package:emed/pages/home/view/pages/calendar/home_page.dart';
import 'package:emed/pages/home/view/pages/doctor/pages/view/doctor_page.dart';
import 'package:emed/pages/home/view/pages/doctor/pages/view/filterview.dart';
import 'package:emed/pages/home/view/pages/hospital/doctor_info_view.dart';
import 'package:emed/pages/home/view/pages/hospital/hospital_info_page.dart';
import 'package:emed/pages/home/view/pages/hospital/hospital_search.dart';
import 'package:emed/pages/home/view/pages/treatment/mainsyringe/treatment_view.dart';
import 'package:emed/widgets/navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        var cubit = HomeCubit();
        cubit.getData();
        return cubit;
      },
      child: homeScaffold(),
    );
  }

  Scaffold homeScaffold() => Scaffold(
        bottomNavigationBar: const NavigationBarWidgets(),
        body: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
          if (state is Homemain) {
            return const HomePage();
          } else if (state is SyringeState) {
            return const TreatmentView();
          } else if (state is DoctorState) {
            return DoctorPage(
              datainfo: state.data,
            );
          } else if (state is HospitalState) {
            return HospitalSearchView();
          } else if (state is HospitalInfoState) {
            return HospitalInfoView(info: state.hinfo);
          } else if (state is DoctorsInfoState) {
            return DoctorInfoView(info: state.hinfo);
          } else if (state is FilterStateHospital) {
            return const FilterView();
          } else if (state is BookingState) {
            return const BookingPage();
          } else {
            return Container();
          }
        }),
      );
}
