import 'package:emed/core/init/base/base_view.dart';
import 'package:emed/pages/auth/cubit/auth_cubit.dart';
import 'package:emed/pages/auth/state/auth_state.dart';
import 'package:emed/pages/auth/view/pages/confirmation_page.dart';
import 'package:emed/pages/auth/view/pages/personal_id_view.dart';
import 'package:emed/pages/auth/view/pages/signin_view.dart';
import 'package:emed/pages/auth/view/pages/signup_page.dart';
import 'package:emed/pages/auth/view/splash/splashone.dart';
import 'package:emed/pages/auth/view/splash/splashsecond.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthView extends StatelessWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: scafold(),
    );
  }

  Scaffold scafold() {
    return Scaffold(
      body: BaseView(
          viewModel: AuthView,
          OnPageBuilder: (context, widget) {
            return BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
              if (state is AuthSplash) {
                return const SplashOne();
              } else if (state is AuthInitial) {
                return const SplashSecond();
              } else if (state is AuthSignUP) {
                return SignUpView();
              } else if (state is AuthSignIN) {
                return SignInView();
              } else if (state is AuthConfirmation) {
                return const ConFirmationView();
              } else if (state is AuthId) {
                return const PersonalIdView();
              } else {
                return Container();
              }
            });
          }),
    );
  }
}
