import 'package:flutter/material.dart';
import 'package:fruitopia/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Fruitopia  extends StatelessWidget {
  const Fruitopia ({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child) {
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
      },
      
    );
  }
}

