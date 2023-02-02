import 'package:flutter/material.dart';
import './screens/home_screen.dart';
import 'screens/popupscreens/settings_screen.dart';
import 'screens/popupscreens/starred_messages_screen.dart';
import './screens/popupscreens/linked_devices_screen.dart';

void main() {
  runApp(const WhatsApp());
}

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff008069),
      ),
      home: const HomeScreen(),
      routes: {
        SettingsScreen.routeName: (context) => const SettingsScreen(),
        StarredMessagesScreen.routeName: (context) => const StarredMessagesScreen(),
        LinkedDevicesScreen.routeName: (context) => const LinkedDevicesScreen(),
      },
    );
  }
}