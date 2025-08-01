import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitopia/constants.dart';
import 'package:fruitopia/core/services/shared_prefrences_singleton.dart';

class AppLanguageCubit extends Cubit<Locale>{
  AppLanguageCubit():super(Locale('en'));
  Locale appLanguage=Locale('en');
  
  
  void changeLanguage(){
    if(appLanguage.languageCode=='en'){
      appLanguage=Locale('ar');
      Prefs.setString(kAppLanguage, appLanguage.languageCode);
    }else{
      appLanguage=Locale('en');
      Prefs.setString(kAppLanguage, appLanguage.languageCode);
    }
    emit(appLanguage);
  }
}
