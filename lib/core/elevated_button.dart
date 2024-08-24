import 'package:anktalk/core/resources/app_text.dart';
import 'package:flutter/material.dart';

Widget appelevatedButton({
  required String text,
  required double fontSize,
  required VoidCallback onPressed,
}) {
  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all<Color>(Colors.purple.shade900),
    ),
    onPressed: onPressed,
    child: appText(text: text, fontSize: fontSize)
  );
}
