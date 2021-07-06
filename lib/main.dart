import 'package:cp_club/app.dart';
import 'package:cp_club/mainwindow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        title: "CP Club programm",
        home: App(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CP_Club(),
    );
  }
}
