import 'package:thegoodbotps/model/Topic.dart';
class ChatDao {

  static final List<Chat> chats = [
    Chat(
      id: "1",
      name: "INFORMAÇÕES",
      location: "Informações sobre o bot",
      description: "Conheça o nosso BOT!",
    ),
    Chat(
      id: "2",
      name: "CHATBOT",
      location: "Converse conosco",
      description: "Olá, quer bater um papo?",
    ),
    Chat(
      id: "3",
      name: "GUIA",
      location: "Guia para a utilização",
      description: "Como usar?",
    ),
    Chat(
      id: "4",
      name: "AJUDA",
      location: "Saber mais!",
      description: "Precisando de ajuda?!",
    ),
  ];

  static Chat geChatById(id) {
    return chats
        .where((p) => p.id == id)
        .first;
  }
}