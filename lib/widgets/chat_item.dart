import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat.dart';
import 'package:whatsapp/screens/chat_details.dart';

class ChatItem extends StatelessWidget {
  final Chat chat;
  const ChatItem(this.chat, {super.key});

  void _selectChat(BuildContext context, Chat chat) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => ChatDetailsScreen(chat: chat),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListTile(
        onTap: () => _selectChat(context, chat),
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
