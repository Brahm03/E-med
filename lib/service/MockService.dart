import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as bundle;

class MockService {
  static final MockService _instance = MockService.init();
  static MockService get instance => _instance;
  MockService.init();
  List datainfo = [];

  Future<List> getData() async {
    final data = await bundle.rootBundle.loadString('lib/mock/data.json');
    final list = jsonDecode(data) as List;
    debugPrint(list.toString());
    datainfo.add(list);
    return list;
  }
}
