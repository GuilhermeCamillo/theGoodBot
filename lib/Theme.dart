import 'package:flutter/material.dart';

class Colors {
  const Colors();
  static const Color appBarTitle = const Color(0xFFFFFFFF);
  static const Color appBarIconColor = const Color(0xFFFFFFFF);
  static const Color appBarDetailBackground = const Color(0x00FFFFFF);
  static const Color appBarGradientStart = const Color(0xFF3383FC);
  static const Color appBarGradientEnd = const Color(0xFF00C6FF);

  static const Color chatCard = const Color(0xFF667A9C);
  static const Color chatPageBackground = const Color(0xFF303030);
  static const Color chatTitle = const Color(0xFFFFFFFF);
  static const Color chatLocation = const Color(0x66FFFFFF);
  static const Color chatDistance = const Color(0x66FFFFFF);
}

class Dimens {
  const Dimens();
  static const chatWidth = 100.0;
  static const chatHeight = 100.0;
}

class TextStyles {
  const TextStyles();
  static const TextStyle appBarTitle = const TextStyle(
    color: Colors.appBarTitle,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    fontSize: 36.0
  );

  static const TextStyle chatTitle = const TextStyle(
    color: Colors.chatTitle,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    fontSize: 24.0
  );

  static const TextStyle chatLocation = const TextStyle(
    color: Colors.chatLocation,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w300,
    fontSize: 14.0
  );

  static const TextStyle chatDistance = const TextStyle(
    color: Colors.chatDistance,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w300,
    fontSize: 12.0
  );


}
