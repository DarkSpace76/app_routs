import 'dart:math';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<T?> mainShowDialog<T>(
    BuildContext context, AlertDialog alertDialog) async {
  return showGeneralDialog<T>(
      context: context,
      transitionBuilder: (ctx, anim1, anim2, child) => BackdropFilter(
            filter: ImageFilter.blur(
                sigmaX: max(0.001, 5 * anim1.value),
                sigmaY: max(0.001, 5 * anim1.value)),
            child: FadeTransition(
              child: child,
              opacity: anim1,
            ),
          ),
      pageBuilder: (
        context,
        Animation<double> animation,
        Animation<double> animation2,
      ) =>
          alertDialog);
}

AlertDialog alertDialog({required Widget content}) => AlertDialog(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15.0))),
    contentPadding: const EdgeInsets.all(6),
    content: content);
