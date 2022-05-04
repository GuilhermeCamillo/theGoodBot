import 'package:flutter/material.dart';

class GuiaScreen extends StatelessWidget {
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
          backgroundImage: AssetImage('assets/guia.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Guia de uso',
        style: TextStyle(fontSize: 28.0, color: Colors.black),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.only(top: 30.0,left: 24,right: 24),
      child: Text(
        'Olá, tudo bem? Espero que sim!\nPrecisando de alguma coisa?\nAqui estão os passos para conversar com o bot.',
        style: TextStyle(fontSize: 16.0, color: Colors.black),
      ),
    );

    final texto = Padding(
      padding: EdgeInsets.only(top: 30.0,left: 24,right: 24),
      child: Text(
        '1° - Entre no chat.\n2° - Quer saber sobre depressão? Pergunte!\n3° - Converse com ele.\n4° - Ele ira trocar ideia com você.\n5° - Ira te ajudar com seus problemas.\n',
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
        title: new Text("Guia", style: TextStyle(color: Colors.white, fontSize: 30),),
      ),
    );
  }
}