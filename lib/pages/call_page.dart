import 'package:chat/functions.dart';
import 'package:chat/pages/my_home_page.dart';

import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key});

  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Row(
          children: [
            Text(
              'Calls',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
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
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 30,
              )),
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
                  child: Text('Clear call log'),
                ),
                const PopupMenuItem<String>(
                  child: Text('Settings'),
                ),
              ];
            },
          ),
        ],
      ),
      bottomNavigationBar: buildNavigationBar(context),
      body: SafeArea(
          child: Container(
        color: Colors.white,
        padding: EdgeInsets.only(
            left: he * 0.01,
            right: he * 0.03,
            top: he * 0.01,
            bottom: he * 0.03),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ListTile(
                title: Text(
                  'Favorites',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  const Text(
                    'Add favorite',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const ListTile(
                title: Text(
                  'Recent',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ),
              customListTileCall('assets/images/aset.webp', 'Shujaat bhai',
                  '↙ October 11, 3:01 PM', Colors.red),
              const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://photosdp.com/wp-content/uploads/2024/03/Whatsapp-Dp-For-Boys-PhotosDp.Com_65.jpg"),
                  ),
                  title: Text(
                    'Faraz Uni',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.red),
                  ),
                  subtitle: Text("↙ October 3, 6:51 PM"),
                  trailing: Icon(Icons.call)),
              customListTileCall('assets/images/cute.jpg', 'Ishaq Karachi',
                  '↗ October 3, 6:23 PM', Colors.black),
              customListTileCall('assets/images/dd.jpg', 'Wazir',
                  '↙ October 3, 12:18 AM', Colors.red),
              customListTileCall('assets/images/sign.jpeg', 'Bilal Uni',
                  '↗ October 3, 6:23 PM', Colors.black),
              customListTileCall('assets/images/jas.webp', 'Mohsin 2Uni',
                  '↙ October 4, 1:05 AM', Colors.red),
              customListTileCall('assets/images/pro.jpeg', 'Ahmed Cxn',
                  '↙ October 8, 2:08 PM', Colors.red),
              customListTileCall('assets/images/myone.webp', 'Karim Karimi',
                  '↗ October 11,  10:12 AM', Colors.black),
              customListTileCall('assets/images/boy.jpeg', 'Hamza Uni',
                  '↗ October 3, 6:23 PM', Colors.black),
              customListTileCall('assets/images/cute.jpg', '+923489939178',
                  '↙ October 3, 6:23 PM', Colors.red)
            ],
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: Colors.green,
        child: const Icon(
          Icons.add_call,
          color: Colors.white,
          size: 28,
        ),
      ),
    );
  }
}
