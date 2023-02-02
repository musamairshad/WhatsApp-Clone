import 'package:flutter/material.dart';

class LinkedDevicesScreen extends StatelessWidget {
  static const routeName = "/linked-devices-screen";

  const LinkedDevicesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("Linked devices"),
      ),
      body: const Center(
        child: Text("Linked Devices"),
      ),
    );
  }
}