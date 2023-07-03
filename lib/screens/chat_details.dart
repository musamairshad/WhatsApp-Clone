import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat.dart';

class ChatDetailsScreen extends StatelessWidget {
  static const routeName = 'chat-details-screen';
  final Chat chat;

  const ChatDetailsScreen({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff008069),
        title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                  radius: 20.0,
                  backgroundImage: NetworkImage(chat.picture),
                ),
                const SizedBox(width: 10.0,),
              Text(
                    chat.name,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
            ],
          ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.videocam_rounded,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.call_rounded,
              color: Colors.white,
            ),
          ),
          PopupMenuButton(
            color: Colors.white,
            itemBuilder: (ctx) => [],
          ),
        ],
      ),
    );
  }
}
