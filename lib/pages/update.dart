import 'package:chat/functions.dart';
import 'package:chat/pages/my_home_page.dart';
import 'package:chat/pages/chat_screen.dart';
import 'package:flutter/material.dart';

class UpdatePage extends StatelessWidget {
  const UpdatePage({super.key});

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
              'Updates',
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
                  child: Text('Status privacy'),
                ),
                const PopupMenuItem<String>(
                  child: Text('Create channel'),
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
                    'Status',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration:
                                    const BoxDecoration(shape: BoxShape.circle),
                                child: const CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/dd.jpg'),
                                ),
                              ),
                              const Positioned(
                                  bottom: -0.5,
                                  right: -1,
                                  child: Stack(children: [
                                    Icon(
                                      Icons.add_circle,
                                      color: Colors.green,
                                    ),
                                    Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    )
                                  ]))
                            ],
                          ),
                          const Text(
                            'My status',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(
                        width: he * 0.03,
                      ),
                      customColumn(
                          Colors.green, 'assets/images/sign.jpeg', 'Bilal Uni'),
                      SizedBox(
                        width: he * 0.03,
                      ),
                      customColumn(
                          Colors.green, 'assets/images/wa.jpg', 'Mohsin 2Uni'),
                      SizedBox(
                        width: he * 0.03,
                      ),
                      customColumn(Colors.green, 'assets/images/myone.webp',
                          'Ahmed Cxn'),
                      SizedBox(
                        width: he * 0.03,
                      ),
                      customColumn(Colors.green, 'assets/images/pro.jpeg',
                          'Karim Karimi'),
                      SizedBox(
                        width: he * 0.03,
                      ),
                      customColumn(Colors.grey.shade300,
                          'assets/images/boy.jpeg', 'Hamza 2Uni'),
                      SizedBox(
                        width: he * 0.03,
                      ),
                      customColumn(Colors.green, 'assets/images/honest.webp',
                          'Shujaat bhai')
                    ],
                  ),
                ),
                SizedBox(
                  height: he * 0.025,
                ),
                Row(
                  children: [
                    const SizedBox(width: 12),
                    const Text(
                      'Channels',
                      style: TextStyle(fontSize: 19),
                    ),
                    SizedBox(
                      width: he * 0.24,
                    ),
                    containerSmall(30, 80, Colors.grey.shade300, Colors.black,
                        'Explore', 12)
                  ],
                ),
                SizedBox(height: he * 0.025),
                customListTile(
                    'assets/images/geo.png',
                    'Geo News',
                    'Latest currency rates in Pakistan as of October | 4:16 PM (PST)',
                    '4:44 PM'),
                customListTile('assets/images/net.jpg', 'Netflix',
                    'I ALREADY MISS SUMMER!!!!!!!!', '10/12/24'),
                customListTile(
                    'assets/images/what.png',
                    'WhatsApp',
                    'Check back next Friday for a brand new episode',
                    '8/24/24'),
                customListTile(
                    'assets/images/digital.png',
                    'Learning Digitally',
                    'A discussion on software engineering',
                    '8/24/24'),
                SizedBox(height: he * 0.02),
                const ListTile(
                  title: Text(
                    'Find channels',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      customContainer(
                          'Romaisa Khan', 'assets/images/girldp.jpg'),
                      const SizedBox(
                        width: 10,
                      ),
                      customContainer('FC Barcelona', 'assets/images/fc.webp'),
                      const SizedBox(
                        width: 10,
                      ),
                      customContainer('ARY News', 'assets/images/arynew.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      customContainer('WWE', 'assets/images/wwe.jpg'),
                      const SizedBox(
                        width: 10,
                      ),
                      customContainer(
                          'Real Madrid C.F.', 'assets/images/madrid.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      customContainer('Geo Super', 'assets/images/super.jpg'),
                      const SizedBox(width: 10),
                      customContainer('A Sports', 'assets/images/asport.jpg')
                    ],
                  ),
                ),
                SizedBox(height: he * 0.03),
                Row(
                  children: [
                    const SizedBox(width: 20),
                    containerSmall(35, 120, Colors.green, Colors.white,
                        'Explore more', 13),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: Colors.green,
        child: const Icon(
          Icons.camera_alt,
          color: Colors.white,
          size: 28,
        ),
      ),
    );
  }
}
