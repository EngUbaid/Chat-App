import 'package:flutter/material.dart';

class ChatListtile extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget time;
  final VoidCallback ontap;
  final ImageProvider image;
  const ChatListtile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.time,
      required this.ontap,
      required this.image});

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    // Set text colors based on the current theme
    final Color textColor = isDarkMode ? Colors.white : Colors.black;
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      onTap: ontap,
      leading: CircleAvatar(
        radius: 20,
        backgroundImage: image,
        // child: Image(
        //   image: image,
        //   fit: BoxFit.cover,
        // ),
      ),
      title: Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 14, color: textColor),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(fontSize: 12, color: textColor),
      ),
      trailing: time,
    );
  }
}
