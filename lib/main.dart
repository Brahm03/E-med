import 'package:emed/core/config/theme/app_theme.dart';
import 'package:emed/routes/allroutes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Med',
      theme: AppTheme.apptheme,
      initialRoute: '/auth',
      onGenerateRoute: (settings) => MyRoutes.instance.ongenerateRoute(settings),
    );
  }
}