import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:namer_app/pages/weather_page.dart';

const bool kReleaseMode = bool.fromEnvironment('dart.vm.product');

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ignore: deprecated_member_use
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: WeatherPage(),
    );
  }
}
