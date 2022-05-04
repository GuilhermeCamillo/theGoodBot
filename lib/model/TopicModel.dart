import 'dart:convert';

class Case {
  String text;
  String name;
  bool type;

  Case({
    this.text,
    this.name,
    this.type,
  });

  factory Case.fromJson(String str) => Case.fromMap(json.decode(str));
  String toJson() => json.encode(toMap());

  factory Case.fromMap(Map<String, dynamic> json) => Case(
    text: json["text"],
    name: json["name"],
    type: json["type"],
  );

  Map<String, dynamic> toMap() => {
    "text": text,
    "name": name,
    "type": type,
  };
}



