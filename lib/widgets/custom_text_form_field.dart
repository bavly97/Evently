import 'package:evently/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextFormField extends StatefulWidget {
  String hintText;
  String? iconName;
  TextEditingController? controller;
  bool isPassword;
  String? Function(String?)? validator;
  int maxLines;

  CustomTextFormField({
    required this.hintText,
    this.iconName,
    this.controller,
    this.isPassword = false,
    this.validator,
    this.maxLines = 1,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool isObscured = widget.isPassword;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return TextFormField(
      maxLines: widget.maxLines,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: widget.validator,
      obscureText: isObscured,
      obscuringCharacter: '*',
      controller: widget.controller,
      style: textTheme.bodyLarge,
      decoration: InputDecoration(
        prefixIcon: widget.iconName == null
            ? null
            : SvgPicture.asset(
                'assets/icons/${widget.iconName}.svg',
                width: 24,
                height: 24,
                fit: BoxFit.scaleDown,
                colorFilter: ColorFilter.mode(AppTheme.grey, BlendMode.srcIn),
              ),
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  isObscured = !isObscured;
                  setState(() {});
                },
                icon: Icon(
                  isObscured ? Icons.visibility : Icons.visibility_off,
                  color: AppTheme.grey,
                ),
              )
            : null,
        hintText: widget.hintText,
      ),
    );
  }
}
