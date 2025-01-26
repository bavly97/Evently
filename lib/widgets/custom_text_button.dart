import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  String text;
  VoidCallback onpressed;
  CustomTextButton({
    required this.text,
    required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpressed,
      child: Text(
        text,
      ),
    );
  }
}
