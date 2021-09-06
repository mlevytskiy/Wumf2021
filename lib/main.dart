import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:bubble/bubble.dart';
import 'package:flutter/services.dart';
import 'package:flutter_html/flutter_html.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'generated/l10n.dart';
import 'screen/WelcomeScreen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'),
        const Locale('ru'),
      ],
      title: _title,
      home: WelcomeScreen(setState),
    );
  }
}



class EnterYourPhoneNumberScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Enter your phone\nnumber to get started",
                            style: TextStyle(fontSize: 25),
                            textAlign: TextAlign.center),
                        SizedBox(height: 15,),
                        Text(
                            "You will receive a verification code\nin Telegram app",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.center),
                      ],
                    ),
                    Text("Phone number EditText"),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          child: Text('Next'),
                          onPressed: () {},
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(10))),
                        )),
                    Text("Keyboard"),
                    SizedBox(),
                  ],
                ))));
  }
}
