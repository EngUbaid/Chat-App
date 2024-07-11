import 'package:flutter/material.dart';

class CommunityScren extends StatefulWidget {
  const CommunityScren({super.key});

  @override
  State<CommunityScren> createState() => _CommunityScrenState();
}

class _CommunityScrenState extends State<CommunityScren> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Communiutry Screen"),
      ),
    );
  }
}
