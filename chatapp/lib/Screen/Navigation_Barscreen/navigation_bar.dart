import 'package:chatapp/common/comon_text.dart';
import 'package:flutter/material.dart';

class Navigationbarscreen extends StatefulWidget {
  const Navigationbarscreen({super.key});

  @override
  State<Navigationbarscreen> createState() => _NavigationbarscreenState();
}

class _NavigationbarscreenState extends State<Navigationbarscreen> {
  int _pageindex = 0;
  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    // Set text colors based on the current theme
    final Color textColor = isDarkMode ? Colors.white : Colors.black;
    return Scaffold(
      body: pages[_pageindex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: greencolor,
          unselectedItemColor: textColor,
          selectedIconTheme: IconThemeData(color: greencolor),
          unselectedIconTheme: IconThemeData(color: textColor),
          currentIndex: _pageindex,
          onTap: (value) {
            setState(() {
              _pageindex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
            BottomNavigationBarItem(
                icon: Icon(Icons.update_outlined), label: "Updates"),
            BottomNavigationBarItem(
                icon: Icon(Icons.people_outline), label: "Communities"),
            BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
          ]),
    );
  }
}
