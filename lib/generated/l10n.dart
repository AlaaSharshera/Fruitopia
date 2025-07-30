// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Fruitopia`
  String get appName {
    return Intl.message('Fruitopia', name: 'appName', desc: '', args: []);
  }

  /// `عربي`
  String get appLanguage {
    return Intl.message('عربي', name: 'appLanguage', desc: '', args: []);
  }

  /// `Welcome to Fruitopia`
  String get onboardingTitle1 {
    return Intl.message(
      'Welcome to Fruitopia',
      name: 'onboardingTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Discover a unique shopping experience with Fruitopia. Explore our wide selection of premium fresh fruits and enjoy the best deals and top quality.`
  String get onboardingSubtitle1 {
    return Intl.message(
      'Discover a unique shopping experience with Fruitopia. Explore our wide selection of premium fresh fruits and enjoy the best deals and top quality.',
      name: 'onboardingSubtitle1',
      desc: '',
      args: [],
    );
  }

  /// `Search and Shop`
  String get onboardingTitle2 {
    return Intl.message(
      'Search and Shop',
      name: 'onboardingTitle2',
      desc: '',
      args: [],
    );
  }

  /// `We offer you the finest handpicked fruits. Browse details, images, and reviews to ensure you choose the perfect fruit.`
  String get onboardingSubtitle2 {
    return Intl.message(
      'We offer you the finest handpicked fruits. Browse details, images, and reviews to ensure you choose the perfect fruit.',
      name: 'onboardingSubtitle2',
      desc: '',
      args: [],
    );
  }

  /// `Start Now`
  String get onboardingButtonText {
    return Intl.message(
      'Start Now',
      name: 'onboardingButtonText',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
