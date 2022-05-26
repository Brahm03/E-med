import 'package:emed/pages/auth/state/auth_state.dart';
import 'package:emed/pages/home/cubit/home_cubit.dart';
import 'package:emed/pages/home/state/home_state.dart';
import 'package:emed/pages/home/view/pages/home_page.dart';
import 'package:emed/widgets/navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: homeScaffold(),
    );
  }

  Scaffold homeScaffold() => Scaffold(
        bottomNavigationBar: const NavigationBarWidgets(),
        body: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
          if (state is Homemain) {
            return const HomePage();
          } else if (state is SyringeState) {
            return const Center(
              child: Text('Syringe Page'),
            );
          } else if (state is DoctorState){
            return const Center(
              child: Text('Doctor Page'),
            );
          } else if (state is HospitalState){
            return const Center(
              child: Text('Hospital Page'),
            );
          } else {
            return Container();
          }
        }),
      );
}
