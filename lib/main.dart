import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:bubble/bubble.dart';
import 'package:flutter/services.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:bubble/issue_clipper.dart';
import 'package:flutter/material.dart';

import 'game_core/game.dart';

import 'package:flutter/material.dart';

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
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _count = 0;

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
                    Image.asset(
                      'assets/ic_shadow.png',
                      width: 50.0,
                      height: 50.0,
                    ),
                    new Flexible(
                        child: new Bubble(
                      color: const Color(0xffFECF9D),
                      margin: BubbleEdges.only(top: 20, left: 8),
                      alignment: Alignment.bottomLeft,
                      nip: BubbleNip.leftTop,
                      child: Html(
                          data:
                              "<p>Hi friend!</p><p>Here you can:</p><p>• Create collection with your favourite apps and share them with friends. <a href=\"http://google.com/\">Details...</a></p><p>• Install and use different plugins. <a href=\"http://google.com/\">Details...</a></p>"),
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
                // TextFormField(
                //   decoration: InputDecoration(
                //     labelText: 'New Price',
                //   ),
                // ),
                Text("Hello2")
              ]),
        ),
        notchMargin: 7,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xffcd3a3a),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Yansayfa()));
        },
        tooltip: 'Increment Counter',
        child: const Icon(Icons.send),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class Yansayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: ElevatedButton.icon(
          style: ButtonStyle(
              padding:
                  MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10))),
          label: Text('Login with Telegram'),
          icon: Image.asset('assets/telegram.png', width: 30.0, height: 30.0),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => EnterYourPhoneNumberScreen()));
          },
        )),
      ),
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
