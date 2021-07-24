import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flash_chat_reatime/constants.dart';
import 'package:flutter_flash_chat_reatime/screen/chat_screen.dart';

class ResgitransionScreen extends StatefulWidget {
  static String id = "resgitransion_screen";

  @override
  _ResgitransionScreenState createState() => _ResgitransionScreenState();
}

class _ResgitransionScreenState extends State<ResgitransionScreen> {
  late final _auth = FirebaseAuth.instance;
  late User loggerInUser;

  late String email;
  late String passWord;

  @override
  void initState() {
    super.initState();
    getCurrentuser();
  }

  void getCurrentuser() async {
    final user = await _auth.currentUser;
    if (user != null) {
      loggerInUser = user;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: "logo",
              child: Container(
                height: 200.0,
                child: Image.asset("images/logo.png"),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.grey),
              onChanged: (values) {
                email = values;
              },
              decoration:
                  kTextFieldDecoration.copyWith(hintText: "Enter your email"),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              obscureText: true,
              style: TextStyle(color: Colors.grey),
              onChanged: (values) {},
              decoration: kTextFieldDecoration.copyWith(
                  hintText: "Enter your password"),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Material(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    try {
                      final user = _auth.createUserWithEmailAndPassword(
                          email: email, password: passWord);
                      if (user != null) {
                        Navigator.pushNamed(context, ChatScreen.id);
                      }
                    } catch (e) {
                      print(e);
                    }
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    "Resgitter",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
