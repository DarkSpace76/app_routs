import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum MenuApp { vacancy, bookmark, profile, message }

Widget itemMenuWeb(
    {bool isActive = false,
    String? title,
    required IconData icon,
    required Function() onPress}) {
  return Padding(
    padding: EdgeInsets.zero,
    child: SizedBox(
      height: 55,
      width: 55,
      child: ElevatedButton(
        onPressed: onPress,
        style: ButtonStyle(
            overlayColor:
                MaterialStateProperty.all(Colors.blue.withOpacity(0.05)),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            shadowColor: MaterialStateProperty.all(Colors.transparent),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(360),
            ))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.black,
            ),
            const SizedBox(height: 3),
            if (isActive)
              Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(360)),
              )
          ],
        ),
      ),
    ),
  );
}

Widget itemMenuMobile(
    {bool isActive = false,
    String? title,
    required IconData icon,
    required Function() onPress}) {
  return Padding(
    padding: EdgeInsets.zero,
    child: SizedBox(
      child: ElevatedButton(
        onPressed: onPress,
        style: ButtonStyle(
            overlayColor:
                MaterialStateProperty.all(Colors.blue.withOpacity(0.05)),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            shadowColor: MaterialStateProperty.all(Colors.transparent),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(360),
            ))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isActive ? Colors.black : Colors.black.withOpacity(0.5),
            ),
            const SizedBox(height: 3),
            title != null
                ? Text(
                    title,
                    style: TextStyle(
                        fontFamily: GoogleFonts.roboto().fontFamily,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: isActive
                            ? Colors.black
                            : Colors.black.withOpacity(0.5)),
                  )
                : SizedBox()
            /*  if (isActive)
              Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(360)),
              ) */
          ],
        ),
      ),
    ),
  );
}
