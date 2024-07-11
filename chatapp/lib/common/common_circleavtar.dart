import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CommonCircleAvtar extends StatelessWidget {
  final String tittle;
  final VoidCallback ontap;
  final ImageProvider image;
  const CommonCircleAvtar({
    super.key,
    required this.tittle,
    required this.ontap,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
            onTap: ontap,
            child: CircleAvatar(radius: 25, backgroundImage: image)),
        const SizedBox(
          height: 10,
        ),
        Text(
          tittle,
          style: TextStyle(fontSize: 12),
        )
      ],
    );
  }
}
