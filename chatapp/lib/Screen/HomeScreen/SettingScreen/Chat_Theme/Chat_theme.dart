import 'package:chatapp/common/Theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatTheme extends StatefulWidget {
  const ChatTheme({super.key});

  @override
  State<ChatTheme> createState() => _ChatThemeState();
}

class _ChatThemeState extends State<ChatTheme> {
  bool isdark = false;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    // Set text colors based on the current theme
    final Color textColor = isDarkMode ? Colors.white : Colors.black;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Chats Theme",
          style: TextStyle(color: textColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10),
        child: ListView(
          children: [
            Text(
              "Display",
              style: TextStyle(color: textColor),
            ),
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              leading: Icon(
                Icons.brightness_5_outlined,
                color: textColor,
              ),
              title: Text(
                "Theme",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: textColor),
              ),
              subtitle: Text(themeProvider.isDarkMode ? "Dark" : "Light"),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(
                        "Choose theme",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: textColor),
                      ),
                      content: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          RadioListTile(
                            value: false,
                            groupValue: themeProvider.isDarkMode,
                            onChanged: (value) {
                              themeProvider.toggleTheme(value!);
                              Navigator.of(context).pop();
                            },
                            title: Text(
                              "Light",
                              style: TextStyle(color: textColor),
                            ),
                          ),
                          RadioListTile(
                            value: true,
                            groupValue: themeProvider.isDarkMode,
                            onChanged: (value) {
                              themeProvider.toggleTheme(value!);
                              Navigator.of(context).pop();
                            },
                            title: Text(
                              "Dark",
                              style: TextStyle(color: textColor),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
