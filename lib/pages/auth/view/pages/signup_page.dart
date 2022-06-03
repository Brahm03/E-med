import 'package:emed/core/components/allvalidators.dart';
import 'package:emed/core/constants/font/fontStyles.dart';
import 'package:emed/core/constants/icons/iconConst.dart';
import 'package:emed/core/constants/radius/radiusConst.dart';
import 'package:emed/extension/sizeExtension.dart';
import 'package:emed/pages/auth/cubit/auth_cubit.dart';
import 'package:emed/pages/auth/state/auth_state.dart';
import 'package:emed/widgets/appbar.dart';
import 'package:emed/widgets/buckbutton.dart';
import 'package:emed/widgets/buttonWidgets.dart';
import 'package:emed/widgets/textFormFielda.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpView extends StatelessWidget {
  SignUpView({Key? key}) : super(key: key);

  // all formfields will be come from cubit
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: ButtonWidgets(
          onPressed: () {
            if (formKey.currentState!.validate()) {
              // next page will be emited this position
              context.read<AuthCubit>().changeState(AuthConfirmation());
            }
          },
          child: const Text("Continue"),
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: AppBarWidget(
                trailing: SizedBox(width: context.w * 0.15),
                leading: BackButtonWidgets(ontap: () => context.read<AuthCubit>().changeState(AuthInitial())),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: SizedBox(
                  height: context.h * 0.88,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: context.h * 0.04),
                          const Text(
                              'Sign up in order to get a full access to the system',
                              style: FontStyles.headline4s,
                              textAlign: TextAlign.center),
                          SizedBox(height: context.h * 0.04),
                          const Text("Full name", style: FontStyles.headline3s),
                          SizedBox(height: context.h * 0.01),
                          MyTextField.textField(
                              text: "Enter your full name...",
                              controller: nameController,
                              validator: Allvalidators.nameValidator),
                          SizedBox(height: context.h * 0.04),
                          const Text("Phone number",
                              style: FontStyles.headline3s),
                          SizedBox(height: context.h * 0.01),
                          MyTextField.textField(
                              text: "Enter your phone number...",
                              controller: phoneController,
                              validator: Allvalidators.phoneValidator),
                          SizedBox(height: context.h * 0.01),
                          const Center(
                            child: Text(
                                "We will send confirmation code to this number",
                                style: FontStyles.headline5s),
                          ),
                          SizedBox(height: context.h * 0.035),
                          const Text("Create password",
                              style: FontStyles.headline3s),
                          SizedBox(height: context.h * 0.01),
                          StatefulBuilder(builder: (context, setState) {
                            return MyTextField.textField(
                                isShown: context.watch<AuthCubit>().getShown,
                                text: "Enter your new password...",
                                controller: passwordController,
                                validator: Allvalidators.passwordValidator,
                                iconButton: IconButton(
                                    splashRadius: RadiuConst.small,
                                    onPressed: () {
                                      context.read<AuthCubit>().obSecure();
                                      setState(() {});
                                      // remove_red_eye icon will be worked with cubit
                                    },
                                    icon: const Icon(IconConst.eye)));
                          }),
                          const Spacer(),
                          SizedBox(height: context.h * 0.04),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
