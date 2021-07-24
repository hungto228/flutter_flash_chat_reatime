import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flash_chat_reatime/screen/chat_screen.dart';
import 'package:flutter_flash_chat_reatime/screen/login_screen.dart';
import 'package:flutter_flash_chat_reatime/screen/resgitransion_screen.dart';
import 'package:flutter_flash_chat_reatime/screen/welcome_screen.dart';

Future<void> main() async {
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen().id,
      routes: {
        WelcomeScreen().id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        ResgitransionScreen.id: (context) => ResgitransionScreen(),
        ChatScreen.id: (context) => ChatScreen()
      },
    );
  }
}
