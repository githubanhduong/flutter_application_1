import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:namer_app/pages/weather_page.dart';


const bool kReleaseMode = bool.fromEnvironment('dart.vm.product');

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherPage(),
    );
  }
}