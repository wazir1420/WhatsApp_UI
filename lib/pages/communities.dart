import 'package:chat/pages/chat_screen.dart';
import 'package:chat/pages/my_home_page.dart';
import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Row(
          children: [
            Text(
              'Communities',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
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
                  child: Text('Settings'),
                ),
              ];
            },
          ),
        ],
      ),
      bottomNavigationBar: buildNavigationBar(context),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const SizedBox(width: 10),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                      child: Icon(
                        Icons.group_add_rounded,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'New Community',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 3,
                color: Colors.grey.shade200,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(width: 10),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                      child: Icon(
                        Icons.group,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    '03434643447',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 2,
                color: Colors.grey.shade200,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 166, 241, 143),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                      child: Icon(
                        Icons.volume_up_rounded,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Column(
                    children: [
                      Text(
                        'Announcements',
                        style: TextStyle(fontSize: 19),
                      ),
                      Text(
                        'Masoma:',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 115,
                  ),
                  const Text(
                    '8/7/24',
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                      height: 50,
                      width: 59,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 25,
                        color: Colors.grey,
                      )),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'View all',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.grey.shade300,
                height: 3,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(width: 10),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                        child: Image(
                            image: AssetImage('assets/images/arynew.png'))),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'ARY NEW officials',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 3,
                color: Colors.grey.shade200,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 166, 241, 143),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                      child: Icon(
                        Icons.volume_up_rounded,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Column(
                    children: [
                      Text(
                        'Announcements',
                        style: TextStyle(fontSize: 19),
                      ),
                      Text(
                        'Masoma:',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 115,
                  ),
                  const Text(
                    '8/7/24',
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              customListTile(
                  'assets/images/arynew.png',
                  'ARY Production Official',
                  '+92 311 8880528: GB dance #skardu',
                  '6/30/24'),
              const SizedBox(
                height: 25,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                      height: 50,
                      width: 59,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 25,
                        color: Colors.grey,
                      )),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'View all',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
