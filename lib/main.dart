import 'package:emed/core/config/theme/app_theme.dart';
import 'package:emed/core/init/navigator/NavigationService.dart';
import 'package:emed/routes/allroutes.dart';
import 'package:emed/service/Boxservice.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await BoxService.instance.createBox();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: NavigationService.instance.navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'E-Med',
      theme: AppTheme.apptheme,
      initialRoute: '/home',
      onGenerateRoute: (settings) =>
          MyRoutes.instance.ongenerateRoute(settings),
    );
  }
}
