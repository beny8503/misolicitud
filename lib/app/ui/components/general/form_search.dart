import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';

class FormSearch extends StatelessWidget {
  const FormSearch({
    super.key,
    required this.hintText,
    //required this.errorText,
    this.errorText,
    required this.items,
    required this.controller,
    this.onChanged,
    required this.absorbing,
  });

  final String hintText;
  //final String errorText;
  final String? errorText;
  final List<String> items;
  final TextEditingController controller;
  final Function(String)? onChanged;
  final bool absorbing;

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
        absorbing: absorbing,
        child: CustomDropdown.search(
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.black,
          ),
          errorText: errorText,
          selectedStyle: const TextStyle(
            fontSize: 14.0,
          ),
          items: items,
          controller: controller,
          onChanged: onChanged,
          fillColor: Colors.transparent,
          borderSide: const BorderSide(
            width: 2,
            color: Color(0xFF1f7f9c),
          ),
          borderRadius: BorderRadius.circular(15.0),
          errorBorderSide: const BorderSide(
            color: Colors.redAccent,
            width: 2.0,
          ),
          fieldSuffixIcon: const IconTheme(
            data: IconThemeData(
              color: Color(0xFF1f7f9c),
            ),
            child: Icon(Icons.arrow_drop_down),
          ),
        ));
  }
}
