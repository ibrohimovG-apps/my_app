import 'package:flutter/material.dart';
import 'package:my_app/base/res/styles/app_styles.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText(
      // ignore: non_constant_identifier_names
      {super.key,
      // ignore: non_constant_identifier_names
      required this.big_text,
      // ignore: non_constant_identifier_names
      required this.small_text,
      required this.func});
  // ignore: non_constant_identifier_names
  final String big_text;
  // ignore: non_constant_identifier_names
  final String small_text;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          big_text,
          style: AppStyles.upcoming_flights,
        ),
        InkWell(
          onTap: func,
          child: Text(
            small_text,
            style: AppStyles.textStyle.copyWith(
              color: AppStyles.primaryColor,
            ),
          ),
        )
      ],
    );
  }
}
