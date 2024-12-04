import 'package:flutter/material.dart';
import 'package:my_app/screens/search/widgets/ticket_tabs.dart';

class AppTicketTabs extends StatelessWidget {
  final String text1;
  final String text2;
  const AppTicketTabs({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xFFF4FdFD),
      ),
      child: Row(
        children: [
          TicketTabs(
            tab_text: text1,
            color: Colors.white,
          ),
          TicketTabs(
            tab_text: text2,
            color: Colors.transparent,
            isRight: true,
          ),
        ],
      ),
    );
  }
}
