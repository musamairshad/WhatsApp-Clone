import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat.dart';

class ChatItem extends StatelessWidget {
  const ChatItem(this.chat, {super.key});
  final Chat chat;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListTile(
        leading: CircleAvatar(
          radius: 20.0,
          backgroundImage: NetworkImage(chat.picture),
        ),
        title: Text(chat.name),
        subtitle: Text(chat.lastChat),
        trailing: Text(chat.latestTimestamp),
      ),
    );
  }
}
