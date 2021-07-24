import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResgitransionScreen extends StatefulWidget {
  static String id = "resgitransion_screen";
  @override
  _ResgitransionScreenState createState() => _ResgitransionScreenState();
}

class _ResgitransionScreenState extends State<ResgitransionScreen> {
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
              style: TextStyle(color: Colors.grey),
              onChanged: (values) {},
              decoration: InputDecoration(
                hintText: "Enter your mail",
                hintStyle: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: Colors.grey),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(32.0),
                  ),
                  borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(32.0),
                  ),
                  borderSide: BorderSide(color: Colors.blueAccent, width: 2),
                ),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              style: TextStyle(color: Colors.grey),
              onChanged: (values) {},
              decoration: InputDecoration(
                hintText: "Enter your mail",
                hintStyle: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: Colors.grey),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(32.0),
                  ),
                  borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(32.0),
                  ),
                  borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
                ),
              ),
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
                  onPressed: () {},
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
