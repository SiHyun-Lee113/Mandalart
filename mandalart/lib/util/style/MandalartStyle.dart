import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ShapeDecoration squareStyle() {
  return ShapeDecoration(
      color: Color(0xFFD9D9D9),
      shape: RoundedRectangleBorder(
        side: BorderSide(width: 1),
        borderRadius: BorderRadius.circular(10),
      ));
}

InputDecoration MandalartTextFieldStyle(String labelText) {
  return InputDecoration(
    labelText: labelText,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0), // Set round border
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0), // Set round border
      borderSide: BorderSide(color: Colors.blue), // Set border color
    ),
    // Remove underline
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(10.0),
    ),
  );
}

InputDecoration MandalartTextFieldStyleLv2(String labelText) {
  return InputDecoration(
    labelText: labelText,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0), // Set round border
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0), // Set round border
      borderSide: BorderSide(color: Colors.blue), // Set border color
    ),
    contentPadding: EdgeInsets.symmetric(vertical: 10.0), // Adjust the vertical padding
    // Remove underline
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(10.0),
    ),
  );
}