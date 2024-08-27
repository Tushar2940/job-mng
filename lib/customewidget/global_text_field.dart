import 'package:flutter/material.dart';
import 'package:job_mng/media/colours.dart';
import 'package:job_mng/media/text_styles.dart';

class GlobalTextFormField extends StatelessWidget {
  final String labelText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final FormFieldValidator<String>? validator;
  final int maxLine;
  final VoidCallback? onTap;

  const GlobalTextFormField({
    super.key,
    required this.labelText,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.validator,
    this.maxLine = 1,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
      decoration: ShapeDecoration(
        color: Colours.lightThemeSecondaryColour.withOpacity(0.2), // Fill color
        shape: ContinuousRectangleBorder(
           borderRadius: BorderRadius.circular(50)
        )
      ),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        maxLines: maxLine,
        onTap: onTap,
        style: TextStyles.subtitle1,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(8),
          border: InputBorder.none,
          hintText: labelText,
          hintStyle: TextStyles.subtitle2,
        ),
      ),
    );
  }
}
