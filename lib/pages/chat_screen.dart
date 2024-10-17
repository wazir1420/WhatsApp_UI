import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: SafeArea(
          child: Container(
        color: Colors.white,
        padding: EdgeInsets.only(
            left: he * 0.03,
            right: he * 0.03,
            top: he * 0.01,
            bottom: he * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: he * 0.07,
              child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(top: 1.0, bottom: 1),
                        child: Icon(
                          Icons.circle_outlined,
                          color: Colors.blue,
                          size: 30,
                        ),
                      ),
                      contentPadding: const EdgeInsets.only(
                          left: 10, top: 10, right: 10, bottom: 1),
                      hintText: 'Ask Meta AI or Search',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[600],
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: const BorderSide(color: Colors.white)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          )))),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://photosdp.com/wp-content/uploads/2024/03/Whatsapp-Dp-For-Boys-PhotosDp.Com_65.jpg'),
              ),
              title: Text(
                'Faraz Uni',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              subtitle: Text("Reacted👍 to 'acha thek hai'"),
              trailing: Text('3:14 PM'),
            ),
            customListTile('assets/images/cute.jpg', 'Ishaq Karachi',
                '✓ acha chala gya kiya', '3:10 PM'),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/fun.jpeg'),
              ),
              title: Text(
                'Uni Group For Fun😉',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              subtitle: Text('~Zakriya Balock: Ary chalo karo idher se'),
              trailing: Icon(Icons.notifications_off),
            ),
            customListTile('assets/images/aset.webp', 'Shujaat Bhai',
                '🚫 This messaage was deleted', '3:01 PM'),
            customListTile('assets/images/dd.jpg', 'Wazir',
                'Kahan ho bhai late ho gya...', '2:12 PM'),
            customListTile('assets/images/jas.webp', 'Mohsin 2Uni',
                '✓✓ han yr ma abi poucha hun 10min hogya', '2:02 PM'),
            customListTile('assets/images/pro.jpeg', 'Ahmed Cxn',
                'lay jaldi ao yr kap se wait...', '1:11 PM'),
            customListTile('assets/images/myone.webp', 'Karim Karimi',
                'You reacted 👍 to "🎧 Audio"', '10:00 AM'),
            customListTile(
                'assets/images/boy.jpeg', 'Hamza Uni', 'Nhe yrr', 'Yesterday'),
            customListTile('assets/images/cute.jpg', '+923489939178',
                '✓✓ kon ho bhai', '10/6/24'),
            customListTile('assets/images/sign.jpeg', 'Bilal Uni',
                'You reacted ❤️ to "Ok bhai"', '10/3/24')
          ],
        ),
      )),
    );
  }
}

Widget customListTile(
    String image, String title, String subtitle, String time) {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage(image),
    ),
    title: Text(
      title,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
    ),
    subtitle: Text(subtitle),
    trailing: Text(time),
  );
}
