import 'package:emed/core/init/base/base_view.dart';
import 'package:emed/pages/auth/cubit/auth_cubit.dart';
import 'package:emed/pages/auth/state/auth_state.dart';
import 'package:emed/pages/auth/view/pages/confirmation_page.dart';
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
              if (state is AuthConfirmation) {
                return const ConFirmationView();
              } else {
                return Container();
              }
            });
          }),
    );
  }
}
