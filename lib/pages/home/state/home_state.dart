abstract class HomeState {
  HomeState();
}

class HomeInitail extends HomeState {
  HomeInitail();
}

class Homemain extends HomeState {
  Homemain();
}

class SyringeState extends HomeState {
  SyringeState();
}

class DoctorState extends HomeState {
  DoctorState();
}

class HospitalState extends HomeState {
  HospitalState();
}

class BookingState {
  BookingState();
}

class NoMeditationState extends HomeState {
  String? text1;
  String? text2;
  NoMeditationState({required this.text1, required this.text2});
}
