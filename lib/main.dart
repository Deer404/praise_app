import 'dart:math';

import 'package:flutter/material.dart';
import 'package:praise_app/constant/sentence.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String text;
  TextEditingController controller;
  String before_text;
  @override
  void initState() {
    text = "";
    controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Praise You"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 0.0),
              child: Container(
                child: TextField(
                  textInputAction: TextInputAction.done,
                  controller: controller,
                  // onChanged: (v) {

                  // },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5.0),
              child: FlatButton(
                onPressed: () {
                  Sentence sentence = Sentence(controller.text);
                    List<String> sentenceList = sentence.getList();
                    print(sentenceList.length);
                    int ranNum = Random().nextInt(sentenceList.length - 1);
                    text = sentenceList[ranNum];
                    if (before_text != text) {
                      before_text = text;
                      setState(() {
                        text = text;
                      });
                    } else {
                      ranNum = Random().nextInt(sentenceList.length - 1);
                      text = sentenceList[ranNum];
                      before_text = text;
                      setState(() {
                        text = text;
                      });
                    }
                },
                color: Colors.lightBlue,
                child: Text(
                  "生成",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                child: Card(
                  child: Center(
                    child: text != null ? Text(text) : Container(),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
