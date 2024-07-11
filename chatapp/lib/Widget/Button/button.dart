import 'package:flutter/material.dart';

class Botton extends StatelessWidget {
  final Widget tittle;
   final  double height;
   final Color colors;
   final Color textcolor;
 // final double width;
  final VoidCallback ontap;
  const Botton({super.key,
  required this.tittle,
  required this.height,
  required this.colors,
   required this.textcolor,
  //required this.width,
  required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: tittle,
        ),
      ),
    );
  }
}
