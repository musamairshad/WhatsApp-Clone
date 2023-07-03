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
        onLongPress: () {
          // ...
        },
        leading: CircleAvatar(
          radius: 20.0,
          backgroundImage: NetworkImage(chat.picture),
        ),
        title: Text(chat.name),
        subtitle: Text(chat.lastChat),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(chat.latestTimestamp),
            const SizedBox(height: 6.0),
            const CircleAvatar(
              backgroundColor: Color(0xff008069),
              radius: 10.0,
              child: Text(
                '1',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
