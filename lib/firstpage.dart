import 'package:flutter/material.dart';
import 'package:whatsapp/calls.dart';
import 'package:whatsapp/status.dart';

import 'chats.dart';
import 'communitty.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[700],
          title: Text(
            'WhatsApp',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.person_outline_outlined),
            ),
            Tab(
              text: 'Chats',
            ),
            Tab(
              text: 'Status',
            ),
            Tab(
              text: 'Calls',
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            Community(),
            Chats(),
            Status(),
            Calls()
          ],
        ),
      ),
    );
  }
}
