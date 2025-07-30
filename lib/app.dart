import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitopia/core/cubits/app_language_cubit/app_language_cubit.dart';
import 'package:fruitopia/core/helper_functions/on_generate_routes.dart';
import 'package:fruitopia/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Fruitopia  extends StatelessWidget {
  const Fruitopia ({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppLanguageCubit>(create:(context) => AppLanguageCubit(),
      child:BlocBuilder<AppLanguageCubit,Locale> (builder:(context,state)=>ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child) {
        return MaterialApp(
       useInheritedMediaQuery: true,
      //locale: DevicePreview.locale(context),
         locale: state,
      builder: DevicePreview.appBuilder,
        localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: onGenerateRoutes,
          initialRoute: SplashView.routeName,
      home: SplashView(),
    );
      },
      
    ) )
    );
  }
}

