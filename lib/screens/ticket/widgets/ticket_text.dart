import 'package:flutter/material.dart';
import 'package:my_app/base/res/media.dart';
import 'package:my_app/base/widgets/ticket_text_style_big.dart';
import 'package:my_app/base/widgets/ticket_text_style_small.dart';

class TicketText extends StatelessWidget {
  final String bigText1;
  final String smallText1;
  final String bigText2;
  final String smallText2;
  final bool? isColor;
  final bool? isVisa;
  const TicketText({
    super.key,
    required this.bigText1,
    required this.smallText1,
    required this.bigText2,
    required this.smallText2,
    this.isColor,
    this.isVisa,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            isVisa == null
                ? TicketTextStyleBig(
                    text: bigText1,
                    isColor: isColor,
                  )
                : Row(
                    children: [
                      Image.asset(
                        AppMedia.visa,
                        scale: 11,
                      ),
                      const Text(
                        " *** 2462",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
            const SizedBox(
              height: 10,
            ),
            TicketTextStyleSmall(
              text: smallText1,
              isColor: isColor,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TicketTextStyleBig(
              text: bigText2,
              isColor: isColor,
            ),
            const SizedBox(
              height: 10,
            ),
            TicketTextStyleSmall(
              text: smallText2,
              isColor: isColor,
            ),
          ],
        )
      ],
    );
  }
}
