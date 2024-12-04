import 'package:flutter/material.dart';

class ProfileTextWidget extends StatelessWidget {
  final String leftText;
  final String rightText;
  final bool isColor;
  const ProfileTextWidget({
    super.key,
    required this.leftText,
    required this.rightText,
    required this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftText,
          style: TextStyle(
            color: isColor  ? Colors.black : Colors.grey,
            fontWeight: isColor  ? FontWeight.bold : null,
            fontSize: 17,
          ),
        ),
        Text(
          rightText,
          style: TextStyle(
            color: isColor ? Colors.black : Colors.grey,
            fontWeight: isColor ? FontWeight.bold : null,
            fontSize: 17,
          ),
        ),
      ],
    );
  }
}
