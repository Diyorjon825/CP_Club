import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              _AvatarWidget(),
              SizedBox(height: 20),
              _NameTextWidget(),
              SizedBox(height: 5),
              _PhoneNumberTextWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class _PhoneNumberTextWidget extends StatelessWidget {
  const _PhoneNumberTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '+998(90)123 45 67',
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
    );
  }
}

class _NameTextWidget extends StatelessWidget {
  const _NameTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Nasriddiov Diyorjon',
      style: TextStyle(
        fontSize: 25,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage('images/Diyor.jpg'),
      radius: 50,
    );
  }
}
