import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:get/get_utils/src/extensions/num_extensions.dart';
import 'package:mapbox_search/mapbox_search.dart';
import 'package:zwork/components/plase_search/place_search_conroller.dart';
import 'package:zwork/main.dart';

class PlaceSearchInput extends StatefulWidget {
  final TextEditingController? controller;
  void Function(MapBoxPlace) onSuggestionSelected;
  Function(String)? onChanged;
  final Widget? prefixIcon;
  final double? fontSize;
  Color borderColor;

  PlaceSearchInput(
      {Key? key,
      this.controller,
      required this.onSuggestionSelected,
      this.prefixIcon,
      this.borderColor = Colors.black,
      this.onChanged,
      this.fontSize})
      : super(key: key);

  @override
  _PlaceSearchInputState createState() => _PlaceSearchInputState();
}

class _PlaceSearchInputState extends State<PlaceSearchInput> {
  PlaceSearchController pController = PlaceSearchController();

  @override
  Widget build(BuildContext context) {
    return TypeAheadField<MapBoxPlace>(
      debounceDuration: 300.milliseconds,
      textFieldConfiguration: TextFieldConfiguration(
          controller: widget.controller,
          onChanged: widget.onChanged,
          style: TextStyle(fontSize: widget.fontSize),
          decoration: InputDecoration(
            hintText: 'hint_city'.tr,
            suffixIcon:
                widget.prefixIcon == null ? Icon(Icons.near_me_outlined) : null,
            prefixIcon: widget.prefixIcon,
            errorBorder: _border(widget.borderColor),
            focusedErrorBorder: _border(widget.borderColor),
            focusedBorder: _border(widget.borderColor),
            enabledBorder: _border(widget.borderColor),
            disabledBorder: _border(widget.borderColor),
            border: _border(widget.borderColor),
          )),
      itemBuilder: (context, MapBoxPlace place) {
        return ListTile(
          //leading: Icon(Icons.location_city),
          title: Text(place.text!),
          subtitle: Text(place.placeName!),
        );
      },
      suggestionsCallback: (pattern) async {
        return (await pController.searchCity(pattern))!.toList();
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

OutlineInputBorder _border(Color color) {
  return OutlineInputBorder(
      borderSide: BorderSide(color: color),
      borderRadius: const BorderRadius.all(Radius.circular(10)));
}
