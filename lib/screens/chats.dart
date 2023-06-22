import 'package:flutter/material.dart';
import 'package:whatsapp/data/chats_data.dart';
import 'package:whatsapp/widgets/chat_item.dart';
import 'package:whatsapp/screens/messages.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (ctx, index) {
            return ChatItem(chats[index]);
          }),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        backgroundColor: const Color(0xff008069),
        onPressed: () {
          Navigator.of(context).pushNamed(MessagesScreen.routeName);
        },
        child: const Icon(color: Colors.white, Icons.message_rounded),
      ),
    );
  }
}
