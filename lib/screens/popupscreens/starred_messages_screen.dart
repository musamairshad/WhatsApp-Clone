import 'package:flutter/material.dart';

class StarredMessagesScreen extends StatelessWidget {
  static const routeName = "/starred-messages-screen";

  const StarredMessagesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("Starred messages"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          PopupMenuButton(
              icon: const Icon(Icons.more_vert),
              itemBuilder: (_) => [
                    const PopupMenuItem(
                      child: Text("Unstar all"),
                    ),
                  ]),
        ],
      ),
      body: const Center(
        child: Text("Starred Messages"),
      ),
    );
  }
}
