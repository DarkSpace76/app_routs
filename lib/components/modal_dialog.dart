import 'package:flutter/material.dart';
import 'package:zwork/components/text.dart';

Widget infoModalDialog(
    {Function()? onConfirm, required String title, required String text}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(8, 10, 8, 20),
    child: Column(mainAxisSize: MainAxisSize.min, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: onConfirm,
            borderRadius: BorderRadius.circular(360),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.close,
                size: 15,
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
      appText(title, size: 16, bold: true),
      const SizedBox(height: 15),
      appText(text, size: 13),
    ]),
  );
}
