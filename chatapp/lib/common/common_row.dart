import 'package:flutter/material.dart';

class Commonrow extends StatelessWidget {
  final String tittle;
  final VoidCallback ontap;
  final IconData icon;
  const Commonrow(
      {super.key,
      required this.tittle,
      required this.ontap,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          tittle,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        IconButton(onPressed: ontap, icon: Icon(icon))
      ],
    );
  }
}
