import 'package:emed/models/doctors_info_model.dart';

class DoctorsModel {
  String image;
  String name;
  String spes;
  List<DoctorsInfoModel> info;
  DoctorsModel(this.image,this.name,this.spes,this.info);
}