import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget appHeaderText(String title, {bool bold = false, double size = 24}) {
  return Text(
    title,
    style: TextStyle(
        fontWeight: bold == true ? FontWeight.bold : FontWeight.normal,
        fontSize: size),
  );
}

Widget appText(String title,
    {bool bold = false,
    Color color = Colors.black,
    double size = 14,
    bool underline = false,
    int? maxLines,
    TextOverflow? textOverflow,
    TextAlign textAlign = TextAlign.start}) {
  return Text(
    title,
    textAlign: textAlign,
    maxLines: maxLines,
    overflow: textOverflow,
    style: TextStyle(
        color: color,
        overflow: TextOverflow.clip,
        fontFamily: GoogleFonts.roboto().fontFamily,
        fontWeight: bold == true ? FontWeight.bold : FontWeight.normal,
        decoration:
            underline == true ? TextDecoration.underline : TextDecoration.none,
        fontSize: size),
  );
}

Widget headerText(String title,
    {bool? edit, Function()? addBtnPress, IconData? icons = Icons.add}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 25),
    child: Row(
      children: [
        Text(
          title,
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontFamily: GoogleFonts.roboto().fontFamily,
              fontSize: 16),
        ),
        const SizedBox(width: 10),
        if (addBtnPress != null && edit == true)
          InkWell(
              onTap: addBtnPress,
              borderRadius: BorderRadius.circular(360),
              child: Icon(
                icons,
                color: Colors.grey,
              )),
      ],
    ),
  );
}

Widget containText(
  String title, {
  Widget? icon,
  Color color = Colors.black,
  FontWeight fontWeight = FontWeight.normal,
  double fontSize = 14,
}) {
  return Row(
    children: [
      if (icon != null) icon,
      if (icon != null) const SizedBox(width: 10),
      Expanded(
        child: Text(
          title,
          style: TextStyle(
              color: color,
              fontWeight: fontWeight,
              fontFamily: GoogleFonts.roboto().fontFamily,
              fontSize: fontSize),
        ),
      ),
    ],
  );
}
