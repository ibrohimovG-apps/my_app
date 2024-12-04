import 'package:flutter/material.dart';

class FindTicket extends StatelessWidget {
  const FindTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xD91130CE),
      ),
      child: const Center(
        child: Text(
          "FInd tickets",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
