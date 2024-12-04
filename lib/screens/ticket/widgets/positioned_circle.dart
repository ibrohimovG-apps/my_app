import 'package:flutter/material.dart';

class PositionedCircle extends StatelessWidget {
  final bool isLeft;
  const PositionedCircle({super.key, required this.isLeft});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: isLeft == true ? 28 : null,
      right: isLeft == true ? null : 28,
      top: 145,
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 2,
          ),
        ),
        child: const CircleAvatar(
          maxRadius: 4,
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
