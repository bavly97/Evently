import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  String text;
  VoidCallback onpressed;
  CustomElevatedButton({
    required this.text,
    required this.onpressed,
  });
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    return ElevatedButton(
      onPressed: onpressed,
      child: Text(text),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(screenSize.width, 56),
      ),
    );
  }
}
