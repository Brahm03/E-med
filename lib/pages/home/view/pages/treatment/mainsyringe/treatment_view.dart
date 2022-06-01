import 'package:emed/core/constants/icons/iconConst.dart';
import 'package:emed/extension/sizeExtension.dart';
import 'package:emed/pages/home/view/pages/treatment/pagestreatment/current_treatment.dart';
import 'package:emed/pages/home/view/pages/treatment/pagestreatment/medical_history.dart';
import 'package:emed/widgets/appbar.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../core/constants/color/colorConst.dart';
import '../pagestreatment/drug_history.dart';

class TreatmentView extends StatefulWidget {
  const TreatmentView({Key? key}) : super(key: key);

  @override
  State<TreatmentView> createState() => _TreatmentViewState();
}

class _TreatmentViewState extends State<TreatmentView> with TickerProviderStateMixin {
  TabController? _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(
              trailing: IconConst.bell,
              leading: const Icon(Icons.person),
              center: SizedBox(
                  height: context.h * 0.025,
                  width: context.w * 0.3,
                  child: IconConst.logo),
            ),
            SizedBox(
              height: context.h * 0.05,
              child: tabBar()),
            Expanded(
              child: SizedBox(
                
                child: TabBarView(
                  controller: _controller,
                  children: const [
                    CurrentTreatment(),
                    MedicalHistory(),
                    DrugHistory(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  TabBar tabBar()=>TabBar(
    controller: _controller,
    indicatorColor: ColorConst.kPrimaryColor,
    labelColor: ColorConst.kPrimaryColor,
    unselectedLabelColor: ColorConst.grey,
    tabs: const [
    Tab(icon: Text("Current treatment")),
    Tab(icon: Text("Medical history")),
    Tab(icon: Text("Drug history")),
  ]);
}
