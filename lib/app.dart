import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitopia/constants.dart';
import 'package:fruitopia/core/cubits/app_language_cubit/app_language_cubit.dart';
import 'package:fruitopia/core/helper_functions/on_generate_routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruitopia/core/services/shared_prefrences_singleton.dart';
import 'package:fruitopia/core/utils/app_colors.dart';
import 'package:fruitopia/features/auth/presentation/views/forget_pass_view.dart';
import 'package:fruitopia/features/auth/presentation/views/new_pass_view.dart';
import 'package:fruitopia/features/auth/presentation/views/otp_view.dart';
import 'package:fruitopia/features/splash/presentation/views/splash_view.dart';
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
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: AppBarTheme( 
              backgroundColor: Colors.white,
              elevation: 0,
              iconTheme:  IconThemeData(color: Colors.black,size: 20.r),
              titleTextStyle: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: Colors.black,
                fontFamily: 'Cairo',
              ),
            ),
            colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor)),
       useInheritedMediaQuery: true,
         locale: Locale(Prefs.getString(kAppLanguage).isNotEmpty? Prefs.getString(kAppLanguage) : 'en'),
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
 
    );
      },
      
    ) )
    );
  }
}

