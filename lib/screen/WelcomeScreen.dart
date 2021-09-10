import 'package:bubble/bubble.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_game_tutorial/consts.dart';
import 'package:flutter_game_tutorial/generated/l10n.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:intl/intl.dart';
import '../AppNav.dart';
import '../assets/constant.dart' as assets;

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                  assets.iconShadow(),
                    new Flexible(
                        child: new Bubble(
                      color: const Color(0xffFECF9D),
                      margin: BubbleEdges.only(top: 20, left: 8),
                      alignment: Alignment.bottomLeft,
                      nip: BubbleNip.leftTop,
                      child: Html(data: S.of(context).welcome_html),
                    ))
                  ],
                ),
              ],
            )),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xffECF1EC),
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 150.0,
          child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // TextField(
                //   decoration: InputDecoration(
                //     labelText: 'New Price',
                //   ),
                // ),
                InkWell(
                    child: Text("Hello2"),
                    onTap: () async {
                      final currentLocal = Intl.getCurrentLocale();
                      await S.load(Locale.fromSubtags(
                          languageCode: currentLocal == Const.ru ? 'en' : Const.ru));
                      setState(() {});
                    })
              ]),
        ),
        notchMargin: 7,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Const.red,
        onPressed: () {
          AppNav.openLoginWithTelegramScreen(context);
        },
        tooltip: 'Increment Counter',
        child: const Icon(Icons.send),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
