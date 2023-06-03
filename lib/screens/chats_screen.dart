import 'package:flutter/material.dart';
import 'package:whatsapp/data/chats.dart';
import 'package:whatsapp/widgets/chat_item.dart';
import 'package:whatsapp/screens/message_screen.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (ctx, i) {
            return ChatItem(chats[i]);
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff008069),
        onPressed: () {
          Navigator.of(context).pushNamed(MessageScreen.routeName);
        },
        child: const Icon(color: Colors.white, Icons.message_rounded),
      ),
    );
  }
}
