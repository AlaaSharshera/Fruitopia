import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fruitopia/app.dart';
import 'package:device_preview/device_preview.dart';
import 'package:fruitopia/core/services/shared_prefrences_singleton.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Prefs.init();
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => Fruitopia(), 
  ),);
}

