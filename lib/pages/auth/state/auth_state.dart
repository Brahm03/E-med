abstract class AuthState {
  AuthState();
}

class AuthSignUP extends AuthState {
  AuthSignUP();
}

class AuthSignIN extends AuthState {
  AuthSignIN();
}

class AuthConfirmation extends AuthState {
  AuthConfirmation();
}

class AuthSplash extends AuthState {
  double _time;
  AuthSplash(this._time);
}

class AuthInitial extends AuthState {
  AuthInitial();
}
