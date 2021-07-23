import 'package:flutter/material.dart';
import 'package:flutter_flash_chat_reatime/constants.dart';

class ChatScreen extends StatefulWidget {
  static String id = "chat_screen";
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: [
          IconButton(
            onPressed: () {
              //add function
            },
            icon: Icon(Icons.close),
          ),
        ],
        title: Text("⚡ chat"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: kMessageContainerDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (values) {},
                      decoration: kMessageTextFieldDecoration,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "send",
                      style: kSendButtonTextStyte,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
