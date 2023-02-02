import 'package:flutter/material.dart';
import '../widgets/chat_item.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (ctx, i) {
          return const ChatItem();
        });
  }
}
