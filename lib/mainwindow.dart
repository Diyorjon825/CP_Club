import 'package:flutter/material.dart';

List<InfoWidget> listdata = [
  InfoWidget('Jaloliddin', 'Abdurahmonov', 'images/jaloliddin.jpg'),
  InfoWidget('Azimjon', 'Yusufov', 'images/Azim.jpg'),
  InfoWidget('Maqsud', 'Baxriddinov', 'images/Maqsud.jpg'),
  InfoWidget('Javohir', 'Akramjonov', 'images/Javohir.jpg'),
  InfoWidget('Diyorjon', 'Nasriddinov', 'images/Diyor.jpg'),
];

class CP_Club extends StatelessWidget {
  CP_Club({Key, key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(49, 27, 146, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 0, 99, 1),
        centerTitle: true,
        title: Text('CP Club'),
      ),
      body: SafeArea(
        child: AvatarWidget(
          listdata: listdata,
        ),
      ),
    );
  }
}

class InfoWidget {
  String name, surname, adressfoto;
  InfoWidget(this.name, this.surname, this.adressfoto);
}

class AvatarWidget extends StatelessWidget {
  List<InfoWidget> listdata;

  AvatarWidget({Key? key, required this.listdata}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:
            listdata.map((data) => AvatarWidgetRow(infoWidget: data)).toList(),
      ),
    );
  }
}

class AvatarWidgetRow extends StatelessWidget {
  InfoWidget infoWidget;
  AvatarWidgetRow({Key? key, required this.infoWidget}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(padding: EdgeInsets.only(left: 25)),
        CircleAvatar(
          backgroundImage: AssetImage(infoWidget.adressfoto),
          radius: 50,
        ),
        Expanded(
          child: Column(
            children: [
              TextCreat(text: infoWidget.name),
              TextCreat(text: infoWidget.surname),
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

class TextCreat extends StatelessWidget {
  String text;
  TextCreat({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 25, color: Colors.white),
    );
  }
}
