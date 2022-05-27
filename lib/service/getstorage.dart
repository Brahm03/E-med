import 'package:get_storage/get_storage.dart';

class Storageservice {
  static final Storageservice _instance = Storageservice.init();
  static Storageservice get instance => _instance;
  Storageservice.init();

  final storage = GetStorage();
}
