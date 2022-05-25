import 'package:bloc/bloc.dart';
import 'package:emed/pages/auth/state/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() :super(AuthConfirmation());
}