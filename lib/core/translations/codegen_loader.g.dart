import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader {
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String, dynamic> tr = {
    "onboardTitle1": "Little Venice Restaurant'a Hoşgeldiniz",
    "onboardTitle2": "Garson Sipariş Sistemi",
    "onboardSoupOfDay": "Günün Çorbası",
    "onboardSoupOfDayDescribe": "Brokoli ve Mavi Peynir",
    "createNewAccount": "Yeni Hesap Oluştur",
    "fillTheForm": "Lütfen boşlukları doldurunuz",
    "email": "E-mail",
    "name": "İsminiz",
    "password": "Şifreniz",
    "selectRole": "Lütfen rolunüzü seçiniz",
    "waiter": "Garson",
    "kitchen": "Mutfak",
    "manager": "Menajer",
    "signUp": "Kayıt ol",
    "haveAnAccount": "Hesabınız yok mu",
    "logIn": "Giriş yap",
    "fill": "Boşluk Hatası",
    "alertFillError": "Lütfen her şeyi doldurunuz",
    "closeText": "Kapat",
    "welcome": "Hoşgeldiniz",
    "loginDescribe": "Lütfen hesabınıza giriş yapınız",
  };
  static const Map<String, dynamic> en = {
    "onboardTitle1": "Welcome the Little Venice Restaurant",
    "onboardTitle2": "Waiter Order System",
    "onboardSoupOfDay": "Soup Of Day",
    "onboardSoupOfDayDescribe": "Brocoli and blue cheese",
    "createNewAccount": "Create a new account",
    "fillTheForm": "Please fill in the form continue",
    "email": "E-mail",
    "name": "Full Name",
    "password": "Password",
    "selectRole": "Please Choose Your Role",
    "waiter": "Waiter",
    "kitchen": "Kitchen",
    "manager": "Manager",
    "signUp": "Sign Up",
    "haveAnAccount": "Have an account?",
    "logIn": "Log in",
    "fill": "Fill Error",
    "alertFillError": "Please fill the everything",
    "closeText": "Close",
    "welcome": "Welcome",
    "loginDescribe": "Please login to your account",
  };
  static const Map<String, Map<String, dynamic>> mapLocales = {
    "tr": tr,
    "en": en
  };
}
