import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zwork/resource/const.dart';

Widget inputField(
    {TextEditingController? controller,
    String? hint,
    TextInputType? keyboardType,
    Widget? suffix,
    bool? digitOnly,
    Function(String)? onChanged,
    String? Function(String?)? validator,
    bool passworField = false}) {
  return Container(
    constraints: const BoxConstraints(minWidth: 150, maxWidth: 328),
    child: TextFormField(
        controller: controller,
        textAlignVertical: TextAlignVertical.center,
        keyboardType: keyboardType,
        obscureText: passworField,
        onChanged: onChanged,
        inputFormatters: digitOnly == true
            ? <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly]
            : null,
        validator: validator,
        decoration: InputDecoration(
            suffixIcon: suffix,
            hintText: hint,
            enabledBorder: _mainBorder(color: Colors.black),
            focusedBorder: _mainBorder(color: Colors.black),
            errorBorder: _mainBorder(color: Colors.red),
            focusedErrorBorder: _mainBorder(color: Colors.black))),
  );
}

OutlineInputBorder _mainBorder({required Color color}) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: color, width: borderWidth));
}
