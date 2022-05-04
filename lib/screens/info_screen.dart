import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
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
          backgroundImage: AssetImage('assets/bot.png'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'TheGoodBot',
        style: TextStyle(fontSize: 28.0, color: Colors.black),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.only(top: 30.0,left: 24,right: 24),
      child: Text(
        'Olá, tudo bem? Espero que sim!\nEste é o nosso BOT, é muito amigavel e esta aqui para tudo o que precisar.',
        style: TextStyle(fontSize: 16.0, color: Colors.black),
      ),
    );

    final texto = Padding(
      padding: EdgeInsets.only(top: 30.0,left: 24,right: 24),
      child: Text(
        'Um BOT bem humanizado e pronto para te proporcionar belas conversar e até mesmo ajudar em algumas questões, esta inteiramente convidado para conversar conosco e saber um pouco mais sobre esse amiguinho.',
        style: TextStyle(fontSize: 16.0, color: Colors.black),
      ),
    );

    final texto1 = Padding(
      padding: EdgeInsets.only(top: 30.0,left: 24,right: 24),
      child: Text(
        'Peça Ajuda.\nConverse um pouco. Tire duvidas.',
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
      title: new Text("Informações", style: TextStyle(color: Colors.white, fontSize: 30),),
    ),
    );
  }
}