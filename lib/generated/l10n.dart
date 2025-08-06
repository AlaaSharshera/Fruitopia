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

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `E-mail`
  String get email {
    return Intl.message('E-mail', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Forget Password?`
  String get forgetPassword {
    return Intl.message(
      'Forget Password?',
      name: 'forgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account? `
  String get DontHaveAccount {
    return Intl.message(
      'Don\'t have an account? ',
      name: 'DontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Create an Account`
  String get registerButtonText {
    return Intl.message(
      'Create an Account',
      name: 'registerButtonText',
      desc: '',
      args: [],
    );
  }

  /// `OR`
  String get or {
    return Intl.message('OR', name: 'or', desc: '', args: []);
  }

  /// `Login with Google`
  String get googleSign {
    return Intl.message(
      'Login with Google',
      name: 'googleSign',
      desc: '',
      args: [],
    );
  }

  /// `Login with Facebook`
  String get facebookSign {
    return Intl.message(
      'Login with Facebook',
      name: 'facebookSign',
      desc: '',
      args: [],
    );
  }

  /// `Login with Apple`
  String get appleSign {
    return Intl.message(
      'Login with Apple',
      name: 'appleSign',
      desc: '',
      args: [],
    );
  }

  /// `Create a New Account`
  String get signup {
    return Intl.message(
      'Create a New Account',
      name: 'signup',
      desc: '',
      args: [],
    );
  }

  /// `New Account`
  String get registerTitle {
    return Intl.message(
      'New Account',
      name: 'registerTitle',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message('Full Name', name: 'fullName', desc: '', args: []);
  }

  /// `Already have an account? `
  String get registerAlreadyHaveAccount {
    return Intl.message(
      'Already have an account? ',
      name: 'registerAlreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `By creating an account, you agree to `
  String get termsOfService {
    return Intl.message(
      'By creating an account, you agree to ',
      name: 'termsOfService',
      desc: '',
      args: [],
    );
  }

  /// `our terms and conditions`
  String get acceptTerms {
    return Intl.message(
      'our terms and conditions',
      name: 'acceptTerms',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get forgotPasswordTitle {
    return Intl.message(
      'Forgot Password',
      name: 'forgotPasswordTitle',
      desc: '',
      args: [],
    );
  }

  /// `Don't worry, just enter your phone number and we’ll send you a verification code.`
  String get forgotPasswordSubtitle {
    return Intl.message(
      'Don\'t worry, just enter your phone number and we’ll send you a verification code.',
      name: 'forgotPasswordSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get forgotPasswordButton {
    return Intl.message(
      'Forgot Password',
      name: 'forgotPasswordButton',
      desc: '',
      args: [],
    );
  }

  /// `Verify Code`
  String get verifyCodeTitle {
    return Intl.message(
      'Verify Code',
      name: 'verifyCodeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter the code we sent to the following email address.`
  String get verifyCodeSubtitle {
    return Intl.message(
      'Enter the code we sent to the following email address.',
      name: 'verifyCodeSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Verify Code`
  String get verifyButton {
    return Intl.message(
      'Verify Code',
      name: 'verifyButton',
      desc: '',
      args: [],
    );
  }

  /// `Resend Code`
  String get resendCode {
    return Intl.message('Resend Code', name: 'resendCode', desc: '', args: []);
  }

  /// `New Password`
  String get newPasswordTitle {
    return Intl.message(
      'New Password',
      name: 'newPasswordTitle',
      desc: '',
      args: [],
    );
  }

  /// `Create a new password to log in.`
  String get newPasswordSubtitle {
    return Intl.message(
      'Create a new password to log in.',
      name: 'newPasswordSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Create New Password`
  String get createNewPassword {
    return Intl.message(
      'Create New Password',
      name: 'createNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password changed successfully`
  String get passwordChangedSuccess {
    return Intl.message(
      'Password changed successfully',
      name: 'passwordChangedSuccess',
      desc: '',
      args: [],
    );
  }

  /// `My Account`
  String get profileTitle {
    return Intl.message('My Account', name: 'profileTitle', desc: '', args: []);
  }

  /// `Edit Picture`
  String get editProfilePicture {
    return Intl.message(
      'Edit Picture',
      name: 'editProfilePicture',
      desc: '',
      args: [],
    );
  }

  /// `General`
  String get generalSection {
    return Intl.message('General', name: 'generalSection', desc: '', args: []);
  }

  /// `Profile`
  String get profile {
    return Intl.message('Profile', name: 'profile', desc: '', args: []);
  }

  /// `My Orders`
  String get myOrders {
    return Intl.message('My Orders', name: 'myOrders', desc: '', args: []);
  }

  /// `Payments`
  String get payments {
    return Intl.message('Payments', name: 'payments', desc: '', args: []);
  }

  /// `Favorites`
  String get favorites {
    return Intl.message('Favorites', name: 'favorites', desc: '', args: []);
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `Theme Mode`
  String get themeMode {
    return Intl.message('Theme Mode', name: 'themeMode', desc: '', args: []);
  }

  /// `Help`
  String get helpSection {
    return Intl.message('Help', name: 'helpSection', desc: '', args: []);
  }

  /// `About Us`
  String get aboutUs {
    return Intl.message('About Us', name: 'aboutUs', desc: '', args: []);
  }

  /// `Logout`
  String get logout {
    return Intl.message('Logout', name: 'logout', desc: '', args: []);
  }

  /// `English`
  String get selectedLanguage {
    return Intl.message(
      'English',
      name: 'selectedLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Personal Information`
  String get personalInfo {
    return Intl.message(
      'Personal Information',
      name: 'personalInfo',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get changePassword {
    return Intl.message(
      'Change Password',
      name: 'changePassword',
      desc: '',
      args: [],
    );
  }

  /// `Current Password`
  String get currentPassword {
    return Intl.message(
      'Current Password',
      name: 'currentPassword',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get newPassword {
    return Intl.message(
      'New Password',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm New Password`
  String get confirmNewPassword {
    return Intl.message(
      'Confirm New Password',
      name: 'confirmNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Save Changes`
  String get saveChanges {
    return Intl.message(
      'Save Changes',
      name: 'saveChanges',
      desc: '',
      args: [],
    );
  }

  /// `Add New Card`
  String get addNewCard {
    return Intl.message('Add New Card', name: 'addNewCard', desc: '', args: []);
  }

  /// `Make Card Default`
  String get makeCardDefault {
    return Intl.message(
      'Make Card Default',
      name: 'makeCardDefault',
      desc: '',
      args: [],
    );
  }

  /// `Expiry Date`
  String get expiryDate {
    return Intl.message('Expiry Date', name: 'expiryDate', desc: '', args: []);
  }

  /// `Card Number`
  String get cardNumber {
    return Intl.message('Card Number', name: 'cardNumber', desc: '', args: []);
  }

  /// `Cardholder Name`
  String get cardHolderName {
    return Intl.message(
      'Cardholder Name',
      name: 'cardHolderName',
      desc: '',
      args: [],
    );
  }

  /// `Add New Payment Method`
  String get addNewPaymentMethod {
    return Intl.message(
      'Add New Payment Method',
      name: 'addNewPaymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message('No', name: 'no', desc: '', args: []);
  }

  /// `Confirm`
  String get yes {
    return Intl.message('Confirm', name: 'yes', desc: '', args: []);
  }

  /// `Do you want to log out?`
  String get logoutConfirmation {
    return Intl.message(
      'Do you want to log out?',
      name: 'logoutConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `There are many types of Lorem Ipsum text available, but the majority have been altered in some way by inserting random words or bits of humor. If you plan to use a passage of Lorem Ipsum, you must first ensure that there are no embarrassing or inappropriate phrases hidden in the text.`
  String get loremParagraph {
    return Intl.message(
      'There are many types of Lorem Ipsum text available, but the majority have been altered in some way by inserting random words or bits of humor. If you plan to use a passage of Lorem Ipsum, you must first ensure that there are no embarrassing or inappropriate phrases hidden in the text.',
      name: 'loremParagraph',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter`
  String get PleaseEnter {
    return Intl.message(
      'Please Enter',
      name: 'PleaseEnter',
      desc: '',
      args: [],
    );
  }

  /// `The password provided is too weak.`
  String get weakPassword {
    return Intl.message(
      'The password provided is too weak.',
      name: 'weakPassword',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred, please try again later.`
  String get errorOccured {
    return Intl.message(
      'An error occurred, please try again later.',
      name: 'errorOccured',
      desc: '',
      args: [],
    );
  }

  /// `The account already exists for that email.`
  String get existedEmail {
    return Intl.message(
      'The account already exists for that email.',
      name: 'existedEmail',
      desc: '',
      args: [],
    );
  }

  /// `No internet connection. Please check your network and try again.`
  String get networkError {
    return Intl.message(
      'No internet connection. Please check your network and try again.',
      name: 'networkError',
      desc: '',
      args: [],
    );
  }

  /// `You must agree to the terms and conditions`
  String get rejectTerms {
    return Intl.message(
      'You must agree to the terms and conditions',
      name: 'rejectTerms',
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
