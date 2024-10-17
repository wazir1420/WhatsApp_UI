import 'package:chat/pages/call_page.dart';
import 'package:chat/pages/chat_screen.dart';
import 'package:chat/pages/communities.dart';
import 'package:chat/pages/update.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _HomePageState();
}

class _HomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      bottomNavigationBar: buildNavigationBar(context),
      body: const ChatScreen(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: Colors.green,
        child: const Icon(
          Icons.message,
          color: Colors.white,
          size: 28,
        ),
      ),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: const Row(
      children: [
        Text(
          'WhatsApp',
          style: TextStyle(
              color: Colors.green, fontSize: 25, fontWeight: FontWeight.w600),
        )
      ],
    ),
    actions: <Widget>[
      IconButton(
        icon: const Icon(
          Icons.camera_alt_rounded,
          size: 30,
          weight: 50,
        ),
        onPressed: () {},
      ),
      PopupMenuButton<String>(
        color: Colors.white,
        icon: const Icon(
          Icons.more_vert,
          size: 30,
          weight: 50,
        ),
        onSelected: (String value) {},
        offset: const Offset(0, 50),
        itemBuilder: (BuildContext context) {
          return [
            const PopupMenuItem<String>(
              child: Text('New group'),
            ),
            const PopupMenuItem<String>(
              child: Text('New broadcast'),
            ),
            const PopupMenuItem<String>(
              child: Text('Linked devices'),
            ),
            const PopupMenuItem<String>(
              child: Text('Starred messages'),
            ),
            const PopupMenuItem<String>(
              child: Text('Settings'),
            ),
          ];
        },
      ),
    ],
  );
}

Widget buildNavigationBar(BuildContext context) {
  return BottomNavigationBar(
    backgroundColor: Colors.white,
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()));
            },
            icon: const Icon(Icons.chat, size: 30, color: Colors.black54)),
        label: 'Chats',
      ),
      BottomNavigationBarItem(
        icon: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const UpdatePage()));
            },
            icon: const Icon(
              Icons.sync,
              size: 30,
              color: Colors.black54,
            )),
        label: 'Updates',
      ),
      BottomNavigationBarItem(
        icon: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CommunityPage()));
            },
            icon: const Icon(
              Icons.people,
              size: 30,
              color: Colors.black54,
            )),
        label: 'Communities',
      ),
      BottomNavigationBarItem(
        icon: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CallPage()));
            },
            icon: const Icon(
              Icons.call,
              size: 30,
              color: Colors.black54,
            )),
        label: 'Calls',
      ),
    ],
    type: BottomNavigationBarType.fixed,
    selectedLabelStyle: const TextStyle(
      fontSize: 13,
    ),
    unselectedLabelStyle: const TextStyle(fontSize: 13),
  );
}
