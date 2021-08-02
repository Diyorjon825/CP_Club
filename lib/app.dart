import 'package:flutter/material.dart';
import 'package:cp_club/slider.dart';

class App extends StatelessWidget {
  InfoWidget info;
  App(this.info);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 33, 113, 1),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              _AvatarWidget(info: info),
              SizedBox(height: 20),
              _NameTextWidget(info: info),
              SizedBox(height: 5),
              _PhoneNumberTextWidget(info: info),
            ],
          ),
        ),
      ),
    );
  }
}

class _PhoneNumberTextWidget extends StatelessWidget {
  InfoWidget info;
  _PhoneNumberTextWidget({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      info.phoneNumber,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w300,
        color: Colors.white,
      ),
    );
  }
}

class _NameTextWidget extends StatelessWidget {
  InfoWidget info;
  _NameTextWidget({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      ('${info.name} ${info.surname}'),
      style: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _AvatarWidget extends StatelessWidget {
  InfoWidget info;
  _AvatarWidget({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(info.adressfoto),
      radius: 50,
    );
  }
}
