import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PhoneNumberInput extends StatelessWidget {
  var maskFormatter = MaskTextInputFormatter(
      mask: '(###) ### ## ##', filter: {"#": RegExp(r'[0-9]')});

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: TextFormField(
          validator: (value) {},
          inputFormatters: [
            maskFormatter,
          ],
          textAlignVertical: TextAlignVertical.center,
          keyboardType: TextInputType.numberWithOptions(),
          decoration: InputDecoration(
              hintText: '(999) 113 25 56',
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none)),
    );
  }
}
