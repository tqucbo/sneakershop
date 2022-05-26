import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';
import 'package:onlineshop/screens/home/components/icon_with_background.dart';

class LoginTextFormField extends StatelessWidget {
  final String hintText;
  final IconData iconData;

  const LoginTextFormField({
    Key? key,
    required this.hintText,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const focusedBorderOutlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(defaultBorderRadius),
      ),
      borderSide: BorderSide(
        color: primaryColor,
      ),
    );
    const enabledBorderOutlineInputBorder = OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(defaultBorderRadius),
        ),
        borderSide: BorderSide.none);

    return TextFormField(
      cursorColor: primaryColor,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(defaultPadding / 2),
          child: IconWithBackground(iconData: iconData),
        ),
        enabledBorder: enabledBorderOutlineInputBorder,
        focusedBorder: focusedBorderOutlineInputBorder,
        hintText: hintText,
      ),
    );
  }
}
