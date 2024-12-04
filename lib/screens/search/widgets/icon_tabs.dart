import 'package:flutter/material.dart';
import 'package:my_app/base/res/styles/app_styles.dart';

class IconTabs extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconTabs({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: AppStyles.iconTabs,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: AppStyles.textStyle,
          ),
        ],
      ),
    );
  }
}
