import 'package:chatapp/common/chat_Listtile.dart';
import 'package:chatapp/common/comon_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Callsceen extends StatefulWidget {
  const Callsceen({super.key});

  @override
  State<Callsceen> createState() => _CallsceenState();
}

class _CallsceenState extends State<Callsceen> {
  String formattedTime = DateFormat('hh:mm a').format(DateTime.now());
  List profileimages = [
    "images/pic1.jpg",
    "images/pic2.jpg",
    "images/pic3.jpg",
    "images/pic4.jpg",
    "images/pic5.jpg",
    "images/pic1.jpg",
    "images/pic2.jpg",
    "images/pic3.jpg",
    "images/pic4.jpg",
    "images/pic5.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    // Set text colors based on the current theme
    final Color textColor = isDarkMode ? Colors.white : Colors.black;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calls",
          style: TextStyle(color: greencolor),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt_outlined,
                color: textColor,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: textColor,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: textColor,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            ChatListtile(
                title: "Create Call link",
                subtitle: "Share a link for your ChatApp call",
                time: Text(
                  "",
                  style: TextStyle(
                    color: textColor,
                  ),
                ),
                ontap: () {},
                image: const AssetImage("images/pic3.jpg")),
            Text(
              "Recent",
              style: TextStyle(
                color: textColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 5,
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  String formattedTime =
                      DateFormat('hh:mm a').format(DateTime.now());
                  return ChatListtile(
                    title: " Chanel NAmes $index",
                    subtitle: formattedTime,
                    time: Icon(
                      Icons.call,
                      color: textColor,
                    ),
                    image: Image.asset(profileimages[index]).image,
                    ontap: () {
                      // Navigator.push(context, MaterialPageRoute(
                      //   builder: (context) {
                      //     return ChatScreen(name: "title $index");
                      //   },
                      // ));
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
