import 'package:flutter/material.dart';
import 'package:thegoodbotps/model/Topic.dart';
import 'package:thegoodbotps/details/GradientAppBar.dart';
import 'package:thegoodbotps/model/Topics.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:thegoodbotps/Theme.dart';

//TELA COM AS CATEGORIAS INICIAIS, COM CARD COLORIDOS
class HomeScreen extends StatefulWidget {
  @override
  _LocalScreenState createState() => _LocalScreenState();
}

//CONSTRUÇÃO DA CLASSE
class _LocalScreenState extends State<HomeScreen> {
  List<Chat> listaLocal;

  void _launchUrl(String Url) async{
    if(await canLaunch(Url)){
      await launch(Url);
    }
    else{
      throw 'Não pode abrir a URL';
    }
  }

  @override
  Widget build(BuildContext context) {
    //PEGA A LSITA DE ELEMENTOS NO REPOSITORY
    return Scaffold(
      //CONSTRUÇÃO DA TELA
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "      TheGoodBot",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30
            ),
          ),
          actions: <Widget>[
          ]),
      //REQUISITA O BODY
      body: ListView(children: <Widget>[
        Container(
            height: 120.0,
            margin: new EdgeInsets.only(left: 40,top: 40, right: 24, bottom: 24),
            decoration: new BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: new BorderRadius.circular(8.0),
              boxShadow: <BoxShadow>[
                new BoxShadow(color: Colors.black,
                    blurRadius: 15.0,
                    offset: new Offset(0.0, 5.0))
              ],),
            child: new Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new ButtonTheme(
                      minWidth: 320.0,
                      height: 70.0,
                      child: new RaisedButton(
                        textColor: Colors.blueGrey,
                        color: Colors.blue,
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Text(
                              'INFORMAÇÕES',
                              style: new TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            new SizedBox(
                              height: 8.0,
                            ),
                            new Text(
                              'Conheça sobre o nosso BOT!',
                              style: new TextStyle(
                                  fontSize: 15.0, color: Colors.black),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            "/info_screen",
                          );
                        },
                      ))
                ])),
        Container(
            height: 120.0,
            margin: new EdgeInsets.only(left: 40,top: 24, right: 24, bottom: 24),
            decoration: new BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: new BorderRadius.circular(8.0),
              boxShadow: <BoxShadow>[
                new BoxShadow(color: Colors.black,
                    blurRadius: 15.0,
                    offset: new Offset(0.0, 5.0))
              ],),
            child: new Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new ButtonTheme(
                      minWidth: 320.0,
                      height: 70.0,
                      child: new RaisedButton(
                        textColor: Colors.white,
                        color: Colors.blue,
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Text(
                              'CHATBOT',
                              style: new TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            new SizedBox(
                              height: 8.0,
                            ),
                            new Text(
                              'Olá, quer bater um papo?!',
                              style: new TextStyle(
                                  fontSize: 15.0, color: Colors.black),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            "/chat_screen",
                          );
                        },
                      ))
                ])),
        Container(
            height: 120.0,
            margin: new EdgeInsets.only(left: 40,top: 24, right: 24, bottom: 24),
            decoration: new BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: new BorderRadius.circular(8.0),
              boxShadow: <BoxShadow>[
                new BoxShadow(color: Colors.black,
                    blurRadius: 15.0,
                    offset: new Offset(0.0, 5.0))
              ],),
            child: new Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new ButtonTheme(
                      minWidth: 320.0,
                      height: 70.0,
                      child: new RaisedButton(
                        textColor: Colors.white,
                        color: Colors.blue,
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Text(
                              'GUIA',
                              style: new TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            new SizedBox(
                              height: 8.0,
                            ),
                            new Text(
                              'Como conversar com ele?',
                              style: new TextStyle(
                                  fontSize: 15.0, color: Colors.black),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            "/guide_screen",
                          );
                        },
                      ))
                ])),
        Container(
            height: 120.0,
            margin: new EdgeInsets.only(left: 40,top: 24, right: 24, bottom: 24),
            decoration: new BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: new BorderRadius.circular(8.0),
              boxShadow: <BoxShadow>[
                new BoxShadow(color: Colors.black,
                    blurRadius: 15.0,
                    offset: new Offset(0.0, 5.0))
              ],),
            child: new Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new ButtonTheme(
                      minWidth: 320.0,
                      height: 70.0,
                      child: new RaisedButton(
                        textColor: Colors.white,
                        color: Colors.blue,
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Text(
                              'AJUDA',
                              style: new TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            new SizedBox(
                              height: 8.0,
                            ),
                            new Text(
                              'Precisando de alguma ajuda?',
                              style: new TextStyle(
                                  fontSize: 15.0, color: Colors.black),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            "/help_screen",
                          );
                        },
                      ))
                ])),
      ]),
      backgroundColor: Colors.blueGrey,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            //BANNER DO MENU
            DrawerHeader(
              child: Text(
                'Olá, Seja bem-vindo',
                style: TextStyle(fontSize: 45, color: Colors.white),
              ),
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            //CATEGORIAS
            ListTile(
              title: Text('Informações', style: TextStyle(color: Colors.black, fontSize: 24)),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  "/info_screen",
                );
              },
            ),
            ListTile(
              title: Text('GitHub', style: TextStyle(color: Colors.black, fontSize: 24)),
              onTap: () {
                _launchUrl('https://github.com/GuilhermeCamillo/N2020TheGoodBot');
              },
            ),
            ListTile(
              title: Text('N2020', style: TextStyle(color: Colors.black, fontSize: 24)),
              onTap: () {
                _launchUrl('https://www.fiap.com.br/graduacao/n2020/');
              },
            ),
            ListTile(
              title: Text(
                'Sair',
                style: TextStyle(color: Colors.redAccent, fontSize: 30),
              ),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  "/",
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
