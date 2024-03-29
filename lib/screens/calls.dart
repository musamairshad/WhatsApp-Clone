import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          backgroundColor: const Color(0xff008069),
          onPressed: () {},
          child: IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: const Icon(Icons.add_call))),
    );
  }
}
