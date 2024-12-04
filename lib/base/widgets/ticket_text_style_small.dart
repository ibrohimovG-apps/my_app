import 'package:flutter/material.dart';
import 'package:my_app/base/res/styles/app_styles.dart';

class TicketTextStyleSmall extends StatelessWidget {
  final String text;
  final TextAlign align;
  final bool? isColor;
  const TicketTextStyleSmall(
      {super.key,
      required this.text,
      this.align = TextAlign.start,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: AppStyles.textStyle.copyWith(
        color: isColor == null ? Colors.white : Colors.grey,
        fontSize: 14,
      ),
    );
  }
}
