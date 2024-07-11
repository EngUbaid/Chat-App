import 'package:flutter/material.dart';

class Textformfield extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hinttext;
  final bool ispass;
  final TextInputType textInputType;
  final double contentpadding;
  final TextStyle? hinttextstyle;
  final FontWeight fontWeight;
  final String? Function(String?)? validator;
  final double circularradius;

  const Textformfield({
    super.key,
    required this.textInputType,
    required this.hinttext,
    required this.textEditingController,
    required this.contentpadding,
    this.ispass = false,
    this.hinttextstyle,
    required this.fontWeight,
    this.validator,
    required this.circularradius,
  });

  @override
  Widget build(BuildContext context) {
    // final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    // Set text colors based on the current theme

    final borderdeco =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context));

    return TextFormField(
      keyboardType: textInputType,
      controller: textEditingController,
      obscureText: ispass,
      validator: validator,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(circularradius),
              borderSide: BorderSide.none),
          hintText: hinttext,
          hintStyle: TextStyle(fontSize: 14, fontWeight: fontWeight),
          focusedBorder: borderdeco,
          errorBorder: borderdeco,
          filled: true,
          // fillColor:,
          contentPadding: EdgeInsets.all(contentpadding)),
    );
  }
}
