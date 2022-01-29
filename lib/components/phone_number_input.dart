import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

Widget phoneNumberInput(
    {String? initphoneNumber,
    TextEditingController? textFieldController,
    required void Function(PhoneNumber)? onInputChanged,
    void Function(bool)? onInputValidated,
    void Function(PhoneNumber)? onSaved}) {
  return Container(
    //constraints: const BoxConstraints(maxWidth: 350),
    padding: const EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10)),
    child: InternationalPhoneNumberInput(
      initialValue: /*  initphoneNumber == null
          ? PhoneNumber(isoCode: 'KZ')
          : */
          PhoneNumber(phoneNumber: initphoneNumber),
      onInputChanged: onInputChanged,
      onInputValidated: onInputValidated,

      selectorConfig: const SelectorConfig(
        selectorType: PhoneInputSelectorType.DROPDOWN,
      ),
      textAlign: TextAlign.start,
      textAlignVertical: TextAlignVertical.center,
      textFieldController: textFieldController,
      ignoreBlank: false,
      inputDecoration: const InputDecoration(
        focusedBorder: InputBorder.none,
        border: InputBorder.none,
      ),
      autoValidateMode: AutovalidateMode.disabled,
      selectorTextStyle: const TextStyle(color: Colors.black),
      countries: const ['KZ' /* , 'RU', 'BY' */],
      //textFieldController: controller,
      formatInput: true,
      keyboardType:
          const TextInputType.numberWithOptions(signed: true, decimal: true),
      inputBorder: InputBorder.none,

      onSaved: onSaved,
    ),
  );
}
