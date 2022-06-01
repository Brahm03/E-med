import 'package:flutter/scheduler.dart';

class DoctorsInfoModel{
  String workPlace;
  String workLocation;
  String workingDay;
  String workingHour; 
  int rating;
  DoctorsInfoModel(this.workPlace,this.workLocation,this.rating,this.workingDay,this.workingHour);
}