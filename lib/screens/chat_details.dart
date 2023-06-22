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
        title: Text(
          chat.name,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
