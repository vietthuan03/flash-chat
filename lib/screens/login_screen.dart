import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';
import 'package:flash_chat/components/rounded_button.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var inputDecoration = kTextFieldDecoration.copyWith(
      hintText: 'Enter your password.',
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
              },
              decoration: kTextFieldDecoration,
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              obscureText: true,
              onChanged: (value) {
              },
              decoration: inputDecoration,
            ),
            SizedBox(
              height: 24.0,
            ),
            RoundedButton(
                value: 'Log In',
                onPressed: () {},
                color: Colors.lightBlueAccent),
          ],
        ),
      ),
    );
  }
}
