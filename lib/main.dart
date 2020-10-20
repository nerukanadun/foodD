import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/FoodDetailsPage.dart';
import 'package:flutter_app/pages/FoodOrderPage.dart';
import 'package:flutter_app/pages/HomePage.dart';
import 'package:flutter_app/pages/SignInPage.dart';
import 'package:flutter_app/pages/SignUpPage.dart';

void main() => runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) =>MaterialApp(
        locale: DevicePreview.of(context).locale, // <--- /!\ Add the locale
        builder: DevicePreview.appBuilder, // <--- /!\ Add the builder
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto', hintColor: Color(0xFFd0cece)),
      home: HomePage(),
    )));
