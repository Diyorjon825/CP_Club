import 'package:flutter/material.dart';
import 'package:cp_club/mainwindow.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(49, 27, 146, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 0, 99, 1),
        centerTitle: true,
        title: Text('CP Club'),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: () {},
            child: Button(),
          ),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(padding: EdgeInsets.only(left: 25)),
        CircleAvatar(
          backgroundImage: AssetImage('images/jaloliddin.jpg'),
          radius: 50,
        ),
        Expanded(
          child: Column(
            children: [
              TextCreat(text: 'Jaloliddin'),
              TextCreat(text: 'Abdurahmonov'),
            ],
          ),
        ),
        Icon(
          Icons.chevron_right,
          color: Colors.white,
        ),
      ],
    );
  }
}
