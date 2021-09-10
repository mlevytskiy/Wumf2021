import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
                  SizedBox(
                    height: 15,
                  ),
                  Text("You will receive a verification code\nin Telegram app",
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
          ),
        ),
      ),
    );
  }
}