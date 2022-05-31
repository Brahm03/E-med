import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class BoxService {
  static final BoxService _instance = BoxService.init();
  static BoxService get instance => _instance;
  BoxService.init();

  late Box<Map<dynamic, dynamic>> inputInfoBox;

  Future createBox() async {
    Directory directory = await getApplicationDocumentsDirectory();
    Hive.init('${directory.path}/info');
    inputInfoBox = await Hive.openBox('info');
  }

  Future addInfoToBox(Map<dynamic, dynamic> info) async {
    await inputInfoBox.add(info);
    debugPrint(inputInfoBox.toString());
  }
}
