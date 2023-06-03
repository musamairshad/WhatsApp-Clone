import 'package:flutter/material.dart';
import 'package:whatsapp/data/appbar.dart';
import 'package:whatsapp/screens/chats_screen.dart';
import 'package:whatsapp/screens/status_screen.dart';
import 'package:whatsapp/screens/calls_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: appBar,
        body: const TabBarView(children: [
          Center(
            child: Text('Communities'),
          ),
          ChatsScreen(),
          StatusScreen(),
          CallsScreen(),
        ]),
      ),
    );
  }
}
