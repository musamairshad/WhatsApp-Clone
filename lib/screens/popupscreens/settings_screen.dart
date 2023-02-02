import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  static const routeName = "/settings-screen";

  const SettingsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("Settings"),
      ),
      body: const Center(
        child: Text("Settings"),
      ),
    );
  }
}
