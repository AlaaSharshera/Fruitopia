import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';

class AppLanguageCubit extends Cubit<Locale>{
  AppLanguageCubit():super(Locale('en'));
  Locale appLanguage=Locale('en');
  void changeLanguage(){
    if(appLanguage.languageCode=='en'){
      appLanguage=Locale('ar');
    }else{
      appLanguage=Locale('en');
    }
    emit(appLanguage);
  }
}
