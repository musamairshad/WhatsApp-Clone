import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff008069),
        onPressed: () {},
        child: IconButton(
          color: Colors.white,
          onPressed: () {},
          icon: const Icon(Icons.camera_alt_rounded),
        ),
      ),
    );
  }
}
