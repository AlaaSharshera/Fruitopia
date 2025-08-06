import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitopia/app.dart';
import 'package:device_preview/device_preview.dart';
import 'package:fruitopia/core/services/custom_bloc_observer.dart';
import 'package:fruitopia/core/services/get_it_service.dart';
import 'package:fruitopia/core/services/shared_prefrences_singleton.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = CustomBlocObserver();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setupgetIt();
  await Prefs.init();
  runApp(
    DevicePreview(enabled: !kReleaseMode, builder: (context) => Fruitopia()),
  );
}
