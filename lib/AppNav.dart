import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_game_tutorial/screen/LoginWithTelegram.dart';
import 'main.dart';

class AppNav {

  static openEnterYourPhoneNumberScreen(BuildContext context, {String phoneNumber = ""} ) {
      _openScreen(context, EnterYourPhoneNumberScreen());
  }

  static openLoginWithTelegramScreen(BuildContext context) {
      _openScreen(context, LoginWithTelegram());
  }

  static _openScreen(BuildContext context, Widget screen) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => screen));
  }

}