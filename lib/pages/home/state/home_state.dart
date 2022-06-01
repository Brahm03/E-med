import 'package:emed/models/doctors_model.dart';
import 'package:emed/models/hospital_model.dart';

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

class FilterStateHospital extends HomeState{
  FilterStateHospital();
}

class DoctorsInfoState extends HomeState{
  DoctorsModel hinfo;
  DoctorsInfoState(this.hinfo);
}

class HospitalInfoState extends HomeState{
  HospitalModel hinfo;
  HospitalInfoState(this.hinfo);
}

class BookingState extends HomeState {
  BookingState();
}

class NoMeditationState extends HomeState {
  String? text1;
  String? text2;
  NoMeditationState({required this.text1, required this.text2});
}
