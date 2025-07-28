import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fruitopia/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => Fruitopia(), 
  ),);
}

class Fruitopia  extends StatelessWidget {
  const Fruitopia ({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       useInheritedMediaQuery: true,
      //locale: DevicePreview.locale(context),
         locale: Locale('en'),
      builder: DevicePreview.appBuilder,
        localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
          debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}

