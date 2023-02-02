import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(7),
        elevation: 0.0,
        child: ListTile(
          title: const Text("Muhammad Usama"),
          subtitle: const Text("Hey there! I am using WhatsApp"),
          leading: const CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
                "https://cdn.bio.link/uploads/profile_pictures/2022-10-18/jBDYcmACNAgNCaVRJrYTxVbEMwGJzDx1.png"),
          ),
          trailing: Column(
            children: const [
              Text("02/02/2023"),
              SizedBox(height: 10),
              Icon(Icons.arrow_forward_rounded),
            ],
          ),
        ),
    );
  }
}
