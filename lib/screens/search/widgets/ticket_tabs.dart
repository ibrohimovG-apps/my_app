import 'package:flutter/material.dart';

class TicketTabs extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String tab_text;
  final Color color;
  final bool isRight;
  const TicketTabs(
      {super.key,
      // ignore: non_constant_identifier_names
      required this.tab_text,
      required this.color,
      this.isRight = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7),
      width: size.width * 0.44,
      decoration: BoxDecoration(
        color: color,
        borderRadius: isRight == false
            ? const BorderRadius.horizontal(left: Radius.circular(50))
            : const BorderRadius.horizontal(left: Radius.circular(50)),
      ),
      child: Center(child: Text(tab_text)),
    );
  }
}
