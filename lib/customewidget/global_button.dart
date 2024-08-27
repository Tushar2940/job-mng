import 'package:flutter/material.dart';
import 'package:job_mng/media/colours.dart';
import 'package:job_mng/media/text_styles.dart';

class GlobalButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? color;
  final Color? textColor;
  final double? fontSize;

  const GlobalButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color,
    this.textColor,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: textColor ?? Colors.white,
          backgroundColor: Colours.lightThemePrimaryColour,
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(50), // default radius
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            text,
            style: TextStyles.button, // default font size
          ),
        ),
      ),
    );
  }
}
