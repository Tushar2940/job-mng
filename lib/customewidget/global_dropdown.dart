import 'package:flutter/material.dart';

class GlobalDropdown extends StatelessWidget {
  final String labelText;
  const GlobalDropdown({super.key,required this.labelText,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
      child: Column(
        children: [
          Container(
            decoration: ShapeDecoration(
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(50)
              ),
              color: Colors.blueAccent.withOpacity(0.09),
            ),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 18, 12, 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(labelText,style: const TextStyle(color: Colors.grey),),
                  const Icon(Icons.keyboard_arrow_down_rounded)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
