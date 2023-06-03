import 'package:flutter/material.dart';
import 'package:whatsapp/home_page.dart';
import 'package:whatsapp/screens/message_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(useMaterial3: true),
    home: const HomePage(),
    routes: {
      MessageScreen.routeName: (ctx) => const MessageScreen(),
    },
  ));
}
