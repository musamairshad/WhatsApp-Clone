import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final appBar = AppBar(
  title: Text('WhatsApp',
      style: GoogleFonts.lato(
        textStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      )),
  backgroundColor: const Color(0xff008069),
  actions: [
    IconButton(
      color: Colors.white,
      onPressed: () {},
      icon: const Icon(Icons.camera_alt_outlined),
    ),
    IconButton(
      color: Colors.white,
      onPressed: () {},
      icon: const Icon(Icons.search),
    ),
    PopupMenuButton(color: Colors.white, itemBuilder: (ctx) => []),
  ],
  bottom: const TabBar(
      labelColor: Colors.white,
      indicatorColor: Colors.white,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorWeight: 2.7,
      unselectedLabelColor: Colors.white70,
      tabs: [
        Tab(
          icon: Icon(Icons.groups),
        ),
        Tab(
          child: Text(
            'Chats',
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
        ),
        Tab(
          child: Text(
            'Status',
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
        ),
        Tab(
          child: Text(
            'Calls',
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
        ),
      ]),
);
