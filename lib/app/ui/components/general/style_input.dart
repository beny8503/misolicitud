import 'package:flutter/material.dart';

class StyleInput {
  InputDecoration decorationField(
      hintText, primaryIcon, secondIcon, iconFunction, showIcon,prefixText, ) {

    return InputDecoration(
      contentPadding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
      hintText: hintText,
      prefixText: prefixText,
      hintStyle: const TextStyle(
        color: Colors.black,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          width: 2,
          color: Color(0xFF1f7f9c),
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Color(0xFF1f7f9c),
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.redAccent,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.redAccent,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      suffixIcon: secondIcon == null
          ? IconTheme(
              data: const IconThemeData(
                color: Color(0xFF1f7f9c),
              ),
              child: Icon(primaryIcon),
            )
          : IconButton(
              onPressed: () => iconFunction(),
              /* {
                //controller.setVisible();
                iconFunction();
              }, */
              icon: Icon(
                showIcon ? primaryIcon : secondIcon,
                color: const Color(0xFF1f7f9c),
              ),
            ),
    );
  }
}


