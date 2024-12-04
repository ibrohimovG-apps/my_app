import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyles {
  static Color primaryColor = primary;
  // ignore: non_constant_identifier_names
  static Color bg_color = const Color(0xFFeeedf2);
  static Color textColor = const Color(0xFF3b3b3b);
  static Color ticketBlue = const Color(0xFF526799);
  static Color ticketOrange = const Color(0xFFF37B67);
  static Color openSpace = const Color(0xFFd2bdb6);
  static Color iconTabs = const Color(0xFFBFC2DF);
  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    color: textColor,
    fontWeight: FontWeight.bold,
  );
  // ignore: non_constant_identifier_names
  static TextStyle good_morning = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );
  // ignore: non_constant_identifier_names
  static TextStyle book_tickets = const TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: Color(0xFF3b3b3b),
  );
  // ignore: non_constant_identifier_names
  static TextStyle upcoming_flights = const TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.bold,
    color: Color(0xFF3b3b3b),
  );
}
