import 'package:chatapp/Screen/HomeScreen/SettingScreen/Chat_Theme/Chat_theme.dart';
import 'package:chatapp/common/chat_Listtile.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  final String name;
  const SettingScreen({super.key, required this.name});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  final List<String> titles = [
    'Account',
    'Privacy',
    'Avatar',
    'Chats',
    'Notification',
    'Storage and data',
    'App language',
    'Help',
  ];

  final List<String> subtitles = [
    'Security notification, change number',
    'Block contacts, disappearing messages',
    'Create, edit, profile photo',
    'Theme, wallpapers, chat history',
    'Message, group & call tones',
    'Network usage, auto_download',
    'English (device\'s language)',
    'Help center, contact us, privacy policy',
  ];

  final List<Icon> iconss = const [
    Icon(
      Icons.key_outlined,
      size: 22,
    ),
    Icon(
      Icons.lock_outline,
      size: 22,
    ),
    Icon(
      Icons.emoji_emotions_outlined,
      size: 22,
    ),
    Icon(
      Icons.chat_outlined,
      size: 22,
    ),
    Icon(
      Icons.notifications_outlined,
      size: 22,
    ),
    Icon(
      Icons.circle_outlined,
      size: 22,
    ),
    Icon(
      Icons.language_outlined,
      size: 22,
    ),
    Icon(
      Icons.help_outline,
      size: 22,
    ),
  ];

  void navigateToScreen(String title) {
    switch (title) {
      case "Account":
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) => const ChatScreen(
        //               name: "",
        //               // image: AssetImage(""),
        //             )));
        break;
      case 'Privacy':
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => Screen2()));
        break;
      case 'Avatar':
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => Screen3()));
        break;
      case 'Chats':
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ChatTheme()));
        break;
      case 'Title 3':
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => Screen3()));
        break;
      case 'Notification':
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => Screen3()));
        break;
      case 'Storage and data ':
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => Screen3()));
        break;
      case 'App language':
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => Screen3()));
        break;
      case 'Help':
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => Screen3()));
        break;
      // Add more cases for other titles
      default:
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => DefaultScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    // Set text colors based on the current theme
    final Color textColor = isDarkMode ? Colors.white : Colors.black;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15),
        child: ListView(
          children: [
            ChatListtile(
                title: "Ubii",
                subtitle: "Be Smile for ever",
                time: const Text(""),
                ontap: () {},
                image: const AssetImage("images/pic2.jpg")),
            SizedBox(
              height: MediaQuery.of(context).size.height - 5,
              child: ListView.builder(
                itemCount: titles.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    // leading: iconss[index],
                    leading: IconTheme(
                      data: IconThemeData(
                        color: textColor,
                      ),
                      child: iconss[index],
                    ),
                    title: Text(
                      titles[index],
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(subtitles[index]),
                    onTap: () {
                      navigateToScreen(titles[index]);
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
