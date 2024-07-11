import 'package:flutter/material.dart';

class Botton extends StatelessWidget {
  final Widget tittle;
  final double height;
  final Color colors;
  final Color bordercolor;
  final VoidCallback ontap;
  final bool isLoading;
  const Botton(
      {super.key,
      required this.tittle,
      required this.height,
      required this.colors,
      required this.bordercolor,
      required this.ontap,
      this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isLoading ? null : ontap,
      child: Container(
        height: height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            border: Border.all(color: bordercolor),
            color: colors,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator(
                  color: Colors.white,
                )
              : tittle,
        ),
      ),
    );
  }
}
