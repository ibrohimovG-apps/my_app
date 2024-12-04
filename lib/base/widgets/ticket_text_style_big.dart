import 'package:flutter/material.dart';
import 'package:my_app/base/res/styles/app_styles.dart';

class TicketTextStyleBig extends StatelessWidget {
  final String text;
  final TextAlign align;
  final bool? isColor;
  const TicketTextStyleBig({
    super.key,
    required this.text,
    this.align = TextAlign.start,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: AppStyles.textStyle.copyWith(
        color: isColor == null ? Colors.white : Colors.black,
        fontSize: 17,
      ),
    );
  }
}
