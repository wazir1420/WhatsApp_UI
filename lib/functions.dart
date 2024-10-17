import 'package:flutter/material.dart';

Widget customListTileCall(
    String image, String title, String subtitle, Color color) {
  return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(image),
      ),
      title: Text(
        title,
        style:
            TextStyle(color: color, fontSize: 20, fontWeight: FontWeight.w600),
      ),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.call));
}

Widget customColumn(Color color, String image, String name) {
  return Column(
    children: [
      Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            shape: BoxShape.circle, border: Border.all(color: color, width: 2)),
        child: CircleAvatar(
          backgroundImage: AssetImage(image),
        ),
      ),
      Text(
        name,
        style: const TextStyle(fontSize: 12),
      ),
    ],
  );
}

Widget customContainer(String name, String image) {
  return Container(
    height: 180,
    width: 140,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade200, width: 2),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Stack(children: [
      Align(
        alignment: const Alignment(0, -0.6),
        child: Container(
          height: 90,
          width: 90,
          padding:
              const EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 0.001),
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: CircleAvatar(
            backgroundImage: AssetImage(image),
          ),
        ),
      ),
      const Positioned(
          right: 30, // Adjust this value as needed
          bottom: 70, // Adjust this value as needed
          child: Icon(
            Icons.check_circle, // Use the verified icon
            color: Colors.blue,
            size: 24,
          )),
      Align(
        alignment: const Alignment(0.1, 0.4),
        child: Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
        ),
      ),
      Align(
          alignment: const Alignment(0.04, 0.8),
          child: containerSmall(
              20,
              60,
              const Color.fromARGB(255, 205, 247, 157),
              Colors.grey.shade600,
              'Follow',
              12))
    ]),
  );
}

Widget containerSmall(double height, double width, Color color, Color colors,
    String text, double fontSize) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(
            color: colors, fontSize: fontSize, fontWeight: FontWeight.w500),
      ),
    ),
  );
}
