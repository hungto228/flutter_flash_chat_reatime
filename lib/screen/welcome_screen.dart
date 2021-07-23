import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flash_chat_reatime/screen/login_screen.dart';
import 'package:flutter_flash_chat_reatime/screen/resgitransion_screen.dart';

class WelcomeScreen extends StatefulWidget {
  String id = "welcome_screen";
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Container(
                  child: Image.asset("images/logo.png"),
                  height: 60.0,
                ),
                Text(
                  "Flatchat_",
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Colors.blue,
                borderRadius: BorderRadius.circular(25.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                  child: Text(
                    "login",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5,
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(25.0),
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pushNamed(context, ResgitransionScreen.id);
                    });
                  },
                  child: Text(
                    "resgitter",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
