
import 'package:emed/models/doctors_model.dart';

class HospitalModel<String> {
  String? image;
  String? name;
  String? location;
  String? phoneNumber;
  String? workingDay;
  String? workingHour;
  String? locationLink;
  String? website;
  List<DoctorsModel> dInfo;

  HospitalModel(
    this.image,
    this.name,
    this.location,
    this.phoneNumber,
    this.workingDay,
    this.workingHour,
    this.locationLink,
    this.website,
    this.dInfo);
}
