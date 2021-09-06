import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_game_tutorial/AppNav.dart';
import 'package:flutter_game_tutorial/generated/l10n.dart';
import '../assets/constant.dart' as Assets;

class LoginWithTelegram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ElevatedButton.icon(
            style: ButtonStyle(
                padding:
                    MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10))),
            label: Text(S.of(context).login_with_telegram),
            icon: Assets.iconTelegram(),
            onPressed: () {
              AppNav.openEnterYourPhoneNumberScreen(context);
            },
          ),
        ),
      ),
    );
  }
}