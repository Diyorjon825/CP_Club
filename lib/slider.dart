import 'package:cp_club/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SliderPage extends StatelessWidget {
  List<InfoWidget> listdata = [
    InfoWidget('Jaloliddin', 'Abdurahmonov', 'images/jaloliddin.jpg',
        '+998 99 507 21 21'),
    InfoWidget('Azimjon', 'Yusufov', 'images/Azim.jpg', '+998 90 123 45 67'),
    InfoWidget(
        'Maqsud', 'Baxriddinov', 'images/Maqsud.jpg', '+998 97 394 03 74'),
    InfoWidget(
        'Javohir', 'Akramjonov', 'images/Javohir.jpg', '+998 93 668 71 18'),
    InfoWidget(
        'Diyorjon', 'Nasriddinov', 'images/Diyor.jpg', '+998 91 548 92 25'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 33, 113, 1),
      body: SafeArea(
        child: ListWidget(
          listinfo: listdata,
        ),
      ),
    );
  }
}

class InfoWidget {
  String name, surname, adressfoto, phoneNumber;
  InfoWidget(this.name, this.surname, this.adressfoto, this.phoneNumber);
}

class ListWidget extends StatelessWidget {
  var listinfo = <InfoWidget>[];
  ListWidget({Key? key, required this.listinfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: listinfo
          .map((e) => WidgetCreator(
                info: e,
              ))
          .toList(),
    );
  }
}

class WidgetCreator extends StatelessWidget {
  InfoWidget info;
  WidgetCreator({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Color.fromRGBO(0, 33, 113, 1)),
            elevation: MaterialStateProperty.all(0),
          ),
          onPressed: () {
            var navigator = Navigator.of(context);
            navigator
                .push(MaterialPageRoute<void>(builder: (context) => App(info)));
          },
          child: Row(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(info.adressfoto),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      info.name,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      info.surname,
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.chevron_right)
            ],
          ),
        ),
      ],
    );
  }
}
