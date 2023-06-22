import 'package:flutter/material.dart';
import 'package:whatsapp/screens/messages.dart';
import 'package:whatsapp/data/appbar.dart';
import 'package:whatsapp/screens/communities.dart';
import 'package:whatsapp/screens/chats.dart';
import 'package:whatsapp/screens/status.dart.dart';
import 'package:whatsapp/screens/calls.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const MyHomePage(),
      routes: {
        MessagesScreen.routeName: (ctx) => const MessagesScreen(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: appBar,
        body: const TabBarView(
          children: [
            CommunitiesScreen(),
            ChatsScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
      ),
    );
  }
}
