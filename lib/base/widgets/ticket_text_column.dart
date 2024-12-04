import 'package:flutter/material.dart';
import 'package:my_app/base/widgets/ticket_text_style_big.dart';
import 'package:my_app/base/widgets/ticket_text_style_small.dart';

class TicketTextColumn extends StatelessWidget {
  final String bigText;
  final String smallText;
  final CrossAxisAlignment align;
  final bool? isColor;
  const TicketTextColumn({
    super.key,
    required this.bigText,
    required this.smallText,
    required this.align,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: align,
      children: [
        TicketTextStyleBig(
          text: bigText,
          isColor: isColor,
        ),
        const SizedBox(
          height: 5,
        ),
        TicketTextStyleSmall(
          text: smallText,
          isColor: isColor,
        ),
      ],
    );
  }
}
