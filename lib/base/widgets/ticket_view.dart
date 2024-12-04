import 'package:flutter/material.dart';
import 'package:my_app/base/res/styles/app_styles.dart';
import 'package:my_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:my_app/base/widgets/big_circle.dart';
import 'package:my_app/base/widgets/big_dot.dart';
import 'package:my_app/base/widgets/ticket_text_column.dart';
import 'package:my_app/base/widgets/ticket_text_style_big.dart';
import 'package:my_app/base/widgets/ticket_text_style_small.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  final bool? isColor;
  const TicketView({
    super.key,
    required this.ticket,
    this.wholeScreen = false,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 185,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColor == null ? AppStyles.ticketBlue : Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      TicketTextStyleBig(
                        text: ticket["from"]["code"],
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      BigDot(
                        isColor: isColor,
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            const SizedBox(
                              height: 24,
                              child: AppLayoutbuilderWidget(
                                randomDivider: 12,
                                width: 4,
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.57,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColor == null
                                      ? Colors.white
                                      : const Color(0xFFBACCF7),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      BigDot(
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      TicketTextStyleBig(
                        text: ticket["to"]["code"],
                        isColor: isColor,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TicketTextStyleSmall(
                          text: ticket["from"]["name"],
                          isColor: isColor,
                        ),
                      ),
                      Expanded(child: Container()),
                      Center(
                        child: TicketTextStyleSmall(
                          text: ticket["flying_time"],
                          isColor: isColor,
                        ),
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TicketTextStyleSmall(
                          text: ticket["to"]["name"],
                          isColor: isColor,
                          align: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 20,
              color: isColor == null ? AppStyles.ticketOrange : Colors.white,
              child: Row(
                children: [
                  const BigCircle(
                    isRight: true,
                  ),
                  Expanded(
                    child: AppLayoutbuilderWidget(
                      randomDivider: 16,
                      width: 6,
                      isColor: isColor,
                    ),
                  ),
                  const BigCircle(
                    isRight: false,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColor == null ? AppStyles.ticketOrange : Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                  bottomRight: Radius.circular(isColor == null ? 21 : 0),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TicketTextColumn(
                        bigText: ticket["date"],
                        smallText: "Date",
                        align: CrossAxisAlignment.start,
                        isColor: isColor,
                      ),
                      TicketTextColumn(
                        bigText: ticket["departure_time"],
                        smallText: "Departure time",
                        align: CrossAxisAlignment.center,
                        isColor: isColor,
                      ),
                      TicketTextColumn(
                        bigText: ticket["number"].toString(),
                        smallText: "Number",
                        align: CrossAxisAlignment.end,
                        isColor: isColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
