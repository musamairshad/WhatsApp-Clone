import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './popupscreens/starred_messages_screen.dart';
import './popupscreens/settings_screen.dart';
import './popupscreens/linked_devices_screen.dart';
import './community_screen.dart';
import './chats_screen.dart';
import './status_screen.dart';
import './calls_screen.dart';

enum PopupOptions {
  newGroup,
  newBroadcast,
  linkedDevices,
  starredMessages,
  settings
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.photo_camera_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            PopupMenuButton(
                // onSelected: (result) {
                //   if (result == 0) {
                //     Navigator.of(context).pushNamed(SettingsScreen.routeName);
                //   }
                // },
                onSelected: (selectedValue) {
                  if (selectedValue == PopupOptions.linkedDevices) {
                    Navigator.of(context).pushNamed(LinkedDevicesScreen.routeName);
                  } else if(selectedValue == PopupOptions.starredMessages){
                    Navigator.of(context).pushNamed(StarredMessagesScreen.routeName);
                  } else if(selectedValue == PopupOptions.settings){
                    Navigator.of(context).pushNamed(SettingsScreen.routeName);
                  }
                },
                icon: const Icon(Icons.more_vert),
                itemBuilder: (ctx) => [
                      const PopupMenuItem(
                        child: Text("New group"),
                      ),
                      const PopupMenuItem(
                        child: Text("New broadcast"),
                      ),
                      const PopupMenuItem(
                        value: PopupOptions.linkedDevices,
                        child: Text("Linked devices")
                      ),
                      const PopupMenuItem(
                        value: PopupOptions.starredMessages,
                        child: Text("Starred messages"),
                      ),
                      const PopupMenuItem(
                        value: PopupOptions.settings,
                        child: Text("Settings"),
                      ),
                    ]),
          ],
          title: const Text("WhatsApp"),
          backgroundColor: Theme.of(context).primaryColor,
          bottom: const TabBar(indicatorColor: Colors.white, tabs: [
            Tab(
              icon: Icon(size: 20.0, FontAwesomeIcons.users),
            ),
            Tab(text: "Chats"),
            Tab(text: "Status"),
            Tab(text: "Calls"),
          ]),
        ),
        body: const TabBarView(children: [
          CommunityScreen(),
          ChatsScreen(),
          StatusScreen(),
          CallsScreen(),
        ]),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          onPressed: () {},
          child: const Icon(Icons.message_rounded),
        ),
      ),
    );
  }
}
