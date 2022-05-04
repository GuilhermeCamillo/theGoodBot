import 'package:flutter/material.dart';

class AjudaScreen extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {

    final alucard = Hero(
      tag: 'bot',
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/help.png'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Ajuda DISK',
        style: TextStyle(fontSize: 28.0, color: Colors.black),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.only(top: 30.0,left: 24,right: 24),
      child: Text(
        'Esta é a pagina de ajuda.\nTemos alguns numeros para ligar e conversar.\n',
        style: TextStyle(fontSize: 16.0, color: Colors.black),
      ),
    );

    final texto = Padding(
      padding: EdgeInsets.only(top: 30.0,left: 24,right: 24),
      child: Text(
        'DISK CVV - 188\nPOLICIA - 190\nDISK DENUNCIA - 180\nDISK DIREITOS HUMANOS - 100',
        style: TextStyle(fontSize: 16.0, color: Colors.black),
      ),
    );

    final texto1 = Padding(
      padding: EdgeInsets.only(top: 30.0,left: 24,right: 24),
      child: Text(
        '',
        style: TextStyle(fontSize: 16.0, color: Colors.black),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blueGrey,
          Colors.black12,
        ]),
      ),
      child: Column(
        children: <Widget>[alucard, welcome, lorem, texto, texto1],
      ),
    );

    return Scaffold(
      body: body,
      appBar: new AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: new Text("Ajuda", style: TextStyle(color: Colors.white, fontSize: 30),),
      ),
    );
  }
}