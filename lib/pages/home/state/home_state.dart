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
  List data = [];
  DoctorState(this.data);
}

class HospitalState extends HomeState {
  HospitalState();
}

class BookingState extends HomeState {
  BookingState();
}

class NoMeditationState extends HomeState {
  String? text1;
  String? text2;
  NoMeditationState({required this.text1, required this.text2});
}
