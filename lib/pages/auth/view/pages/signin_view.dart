import 'package:emed/core/components/allvalidators.dart';
import 'package:emed/core/constants/font/FontStyles.dart';
import 'package:emed/core/constants/icons/iconConst.dart';
import 'package:emed/core/constants/radius/RadiusConst.dart';
import 'package:emed/extension/sizeExtension.dart';
import 'package:emed/pages/auth/cubit/auth_cubit.dart';
import 'package:emed/pages/auth/state/auth_state.dart';
import 'package:emed/widgets/appbar.dart';
import 'package:emed/widgets/buckbutton.dart';
import 'package:emed/widgets/buttonWidgets.dart';
import 'package:emed/widgets/textFormFielda.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInView extends StatelessWidget {
  SignInView({Key? key}) : super(key: key);

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
                  leading: BackButtonWidgets(ontap: () => context.read<AuthCubit>().changeState(AuthInitial())),
                  text: "Log In"),
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
                          const Center(
                            child: Text('Log in to your account',
                                style: FontStyles.headline4s,
                                textAlign: TextAlign.center),
                          ),
                          SizedBox(height: context.h * 0.04),
                          SizedBox(height: context.h * 0.04),
                          const Text("Phone number",
                              style: FontStyles.headline3s),
                          SizedBox(height: context.h * 0.01),
                          MyTextField.textField(
                              text: "Enter your phone number...",
                              controller: phoneController,
                              validator: Allvalidators.phoneValidator),
                          SizedBox(height: context.h * 0.04),
                          const Text("Your password",
                              style: FontStyles.headline3s),
                          SizedBox(height: context.h * 0.01),
                          StatefulBuilder(builder: (context, setState) {
                            return MyTextField.textField(
                                text: "Enter your new password...",
                                controller: passwordController,
                                validator: Allvalidators.passwordValidator,
                                isShown: context.watch<AuthCubit>().getShown,
                                iconButton: IconButton(
                                    splashRadius: RadiuConst.medium,
                                    onPressed: () {
                                      context.read<AuthCubit>().obSecure();
                                      setState(() {});
                                    },
                                    icon: const Icon(IconConst.eye)));
                          }),
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
