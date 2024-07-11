import 'package:chatapp/Screen/HomeScreen/ChatScreen/chatscreen.dart';
import 'package:chatapp/Screen/HomeScreen/SettingScreen/settingscreen.dart';
import 'package:chatapp/common/chat_Listtile.dart';
import 'package:chatapp/common/comon_text.dart';
import 'package:chatapp/common/textfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var sesrchcontroler = TextEditingController();
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
    final Color iconColor = isDarkMode ? Colors.black : Colors.white;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Chat App",
          style: TextStyle(
            color: greencolor,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt,
                color: textColor,
              )),
          PopupMenuButton<String>(
            color: iconColor,
            onSelected: (value) {
              // Handle the menu item selection here
              switch (value) {
                case 'New  Group ':
                  // Navigate to Settings
                  break;
                case 'New bradcast ':
                  // Navigate to Profile
                  break;
                case 'Link devices':
                  // Navigate to Help
                  break;
                case 'Starred messages':
                  // Navigate to Help
                  break;
                case 'Settings':
                  // Navigate to Help
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  onTap: () {},
                  value: 'New  Group ',
                  child: Text(
                    'New  Group ',
                    style: TextStyle(color: textColor),
                  ),
                ),
                PopupMenuItem<String>(
                  onTap: () {},
                  value: 'New bradcast ',
                  child: Text(
                    'New bradcast ',
                    style: TextStyle(color: textColor),
                  ),
                ),
                PopupMenuItem<String>(
                  onTap: () {},
                  value: 'Link devices',
                  child: Text(
                    'Link devices',
                    style: TextStyle(color: textColor),
                  ),
                ),
                PopupMenuItem<String>(
                  onTap: () {},
                  value: 'Starred messages',
                  child: Text(
                    'Starred messages',
                    style: TextStyle(color: textColor),
                  ),
                ),
                PopupMenuItem<String>(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return SettingScreen(name: "name");
                      },
                    ));
                  },
                  value: 'Settings',
                  child: Text(
                    'Settings',
                    style: TextStyle(color: textColor),
                  ),
                ),
              ];
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: ListView(
          children: [
            SizedBox(
              height: 40,
              child: Textformfield(
                textInputType: TextInputType.name,
                hinttext: 'Search chat ',
                textEditingController: sesrchcontroler,
                contentpadding: 15,
                fontWeight: FontWeight.normal,
                circularradius: 20,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 5,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  String formattedTime =
                      DateFormat('hh:mm a').format(DateTime.now());

                  return ChatListtile(
                    title: " Names  $index",
                    subtitle: "messeges $index",
                    time: Text(formattedTime),
                    image: Image.asset(
                      profileimages[index],
                    ).image,
                    ontap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return ChatScreen(
                            name: "title $index",
                            image: AssetImage(profileimages[index]),
                          );
                        },
                      ));
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: greencolor,
        onPressed: () {},
        child: const Icon(Icons.message),
      ),
    );
  }
}
