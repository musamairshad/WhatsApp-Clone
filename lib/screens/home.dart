import 'package:flutter/material.dart';
import 'package:whatsapp/data/appbar.dart';
import 'package:whatsapp/screens/communities.dart';
import 'package:whatsapp/screens/chats.dart';
import 'package:whatsapp/screens/status.dart.dart';
import 'package:whatsapp/screens/calls.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
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
