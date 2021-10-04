import 'package:bubble/bubble.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:country_picker/country_picker.dart';
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
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 130.0,
          child:
          Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 35, right: 10, bottom: 10),
                    child: Center(
                      child:
                      Container(
                        decoration: BoxDecoration(color: Colors.white),
                        padding: new EdgeInsets.all(10.0),
                        child: InkWell(
                          onTap: () {

                          },
                          child: Stack(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  // color: Colors.blue,
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  border: Border.all(color: Colors.blue)
                                ),
                                margin: EdgeInsets.only(top: 10),
                              ),
                              Positioned(
                                left: 10,
                                top: 3,
                                child: Container(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [Colors.white, Colors.white],
                                          begin: FractionalOffset(0, 0),
                                          end: FractionalOffset(0, 1),
                                          stops: [0.0, 1.0],
                                          tileMode: TileMode.clamp
                                      )),
                                  child: Text('Country', style: TextStyle(color: Colors.blue)),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: double.infinity,
                                padding: EdgeInsets.only(top: 10),
                              child: CountryListPick(
                                appBar: AppBar(
                                  backgroundColor: Colors.amber,
                                  title: Text('Pick your country'),
                                ),
                                // if you need custom picker use this
                                // pickerBuilder: (context, CountryCode countryCode) {
                                //   return Row(
                                //     children: [
                                //       Image.asset(
                                //         countryCode.flagUri,
                                //         package: 'country_list_pick',
                                //       ),
                                //       Text(countryCode.code),
                                //       Text(countryCode.dialCode),
                                //     ],
                                //   );
                                // },
                                theme: CountryTheme(
                                  isShowFlag: false,
                                  isShowTitle: true,
                                  isShowCode: false,
                                  isDownIcon: false,
                                  showEnglishName: true,
                                  labelColor: Colors.blueAccent,
                                ),
                                initialSelection: '+62',
                                // or
                                // initialSelection: 'US'
                                onChanged: (CountryCode code) {
                                  print(code.name);
                                  print(code.code);
                                  print(code.dialCode);
                                  print(code.flagUri);
                                },
                              ),
                              ),
                            ],
                        ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 35, right: 10, bottom: 10),
                    child: Center(
                      child:
                      Container(
                        decoration: BoxDecoration(color: Colors.white),
                        padding: new EdgeInsets.all(10.0),
                        child: InkWell(
                          onTap: () {
                            showDialog(context: context, builder: (context) {
                              return AlertDialog(content: Text("Hello form dialog"));
                            });
                          },
                          child: Stack(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    border: Border.all(color: Colors.blue),
                                ),
                                margin: EdgeInsets.only(top: 10),
                              ),
                              Positioned(
                                left: 10,
                                top: 3,
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [Colors.white, Colors.white],
                                        begin: FractionalOffset(0, 0),
                                        end: FractionalOffset(0, 1),
                                        stops: [0.0, 1.0],
                                        tileMode: TileMode.clamp
                                    )),
                                  child: Text('Language', style: TextStyle(color: Colors.blue,)),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
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
