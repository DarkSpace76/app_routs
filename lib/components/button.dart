import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zwork/components/text.dart';
import 'package:zwork/resource/const.dart';

Widget buttonAuth(String title,
    {Color bgColor = Colors.white, Function()? onPress}) {
  return CupertinoButton(
    padding: EdgeInsets.zero,
    onPressed: onPress,
    child: Container(
      constraints: const BoxConstraints(
          minWidth: 328, minHeight: 40, maxHeight: 40, maxWidth: 328),
      decoration: BoxDecoration(
        color: bgColor,
        border: Border.all(
            color: bgColor == Colors.black ? Colors.white : Colors.black,
            width: borderWidth),
        borderRadius: BorderRadius.circular(45),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              color: bgColor == Colors.black ? Colors.white : Colors.black),
        ),
      ),
    ),
  );
}

Widget button(String title,
    {Color bgColor = Colors.black,
    double fontSize = 14,
    Function()? onPressed}) {
  return CupertinoButton(
    padding: EdgeInsets.zero,
    onPressed: onPressed,
    child: Container(
      constraints: const BoxConstraints(minWidth: 150, maxWidth: 328),
      height: 40,
      decoration: BoxDecoration(
        color: onPressed == null ? Colors.grey.withOpacity(.3) : bgColor,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              fontSize: fontSize,
              fontFamily: GoogleFonts.roboto().fontFamily,
              color: Colors.white),
        ),
      ),
    ),
  );
}

Widget skipButton(String title,
    {Function()? onPress,
    Color titleColor = Colors.black,
    bool underline = false}) {
  return SizedBox(
    height: 40,
    child: TextButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(45.0),
        ))),
        onPressed: onPress,
        child: appText(title, color: titleColor, underline: underline)),
  );
}
