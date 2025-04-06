import 'package:flutter/material.dart';

class StyleLabel {
  Padding inputLabel(text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      child: Row(
        children: [
          Text(
            text,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Text(
            '*',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 16,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
