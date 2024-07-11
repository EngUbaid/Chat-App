import 'package:flutter/material.dart';

class CommonSnackbar extends StatefulWidget {
  final String tittle;
  final Color color;
  const CommonSnackbar({super.key, required this.tittle, required this.color});

  @override
  State<CommonSnackbar> createState() => _CommonSnackbarState();
}

class _CommonSnackbarState extends State<CommonSnackbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          
          // ScaffoldMessenger.of(context).showSnackBar(
          // SnackBar(backgroundColor: widget.color, content: Text(widget.tittle))),
        ],
      ),
    );
  }
}
