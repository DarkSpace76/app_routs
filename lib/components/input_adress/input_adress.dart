import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:get/get_utils/src/extensions/num_extensions.dart';
import 'package:mapbox_search/mapbox_search.dart';
import 'package:zwork/components/input_adress/adress_controller.dart';
import 'package:zwork/components/plase_search/place_search_conroller.dart';
import 'package:zwork/db/model/prediction.dart';
import 'package:zwork/main.dart';

OutlineInputBorder _border(Color color) {
  return OutlineInputBorder(
      borderSide: BorderSide(color: color),
      borderRadius: const BorderRadius.all(Radius.circular(10)));
}

class AdressInput extends StatefulWidget {
  final TextEditingController? textController;
  void Function(PredictionModel) onSuggestionSelected;
  void Function(String)? onChanged;
  final Widget? prefixIcon;
  final Widget? sufixIcon;
  final double? fontSize;
  Color borderColor;
  final double? lat;
  final double? lon;

  AdressInput(
      {Key? key,
      this.textController,
      required this.onSuggestionSelected,
      this.onChanged,
      this.sufixIcon,
      this.prefixIcon,
      this.borderColor = Colors.black,
      this.fontSize,
      this.lat,
      this.lon})
      : super(key: key);

  @override
  _AdressInputState createState() => _AdressInputState();
}

class _AdressInputState extends State<AdressInput> {
  AddressSearchController aController = AddressSearchController();

  @override
  Widget build(BuildContext context) {
    return TypeAheadField<PredictionModel>(
      debounceDuration: 300.milliseconds,
      textFieldConfiguration: TextFieldConfiguration(
          controller: widget.textController,
          onChanged: widget.onChanged,
          style: TextStyle(fontSize: widget.fontSize),
          decoration: InputDecoration(
            hintText: 'address_hint'.tr,
            hintStyle: TextStyle(fontSize: 14),
            suffixIcon:
                widget.prefixIcon == null ? Icon(Icons.near_me_outlined) : null,
            prefixIcon: widget.prefixIcon,
            suffix: widget.sufixIcon,
            errorBorder: _border(widget.borderColor),
            focusedErrorBorder: _border(widget.borderColor),
            focusedBorder: _border(widget.borderColor),
            enabledBorder: _border(widget.borderColor),
            disabledBorder: _border(widget.borderColor),
            border: _border(widget.borderColor),
          )),
      itemBuilder: (context, PredictionModel adress) {
        return ListTile(
          title: Text(adress.description!),
        );
      },
      suggestionsCallback: (pattern) async {
        return (await aController.searchByText(pattern,
                lat: widget.lat, lon: widget.lon))
            .toList();
      },
      noItemsFoundBuilder: (_) => Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(8),
        child: Center(child: Text('Item not found')),
      ),
      onSuggestionSelected: widget.onSuggestionSelected,
    );
  }
}
