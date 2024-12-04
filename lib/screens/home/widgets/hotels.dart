import 'package:flutter/material.dart';
import 'package:my_app/base/res/styles/app_styles.dart';

class Hotels extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const Hotels({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(right: 16, bottom: 16),
      padding: const EdgeInsets.all(12),
      width: size.width * 0.6,
      height: 350,
      decoration: BoxDecoration(
        color: AppStyles.primaryColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: AppStyles.primaryColor,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/${hotel['image']}",
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            hotel["place"],
            style: TextStyle(
              color: AppStyles.openSpace,
              fontSize: 26,
            ),
          ),
          Text(
            hotel["destination"],
            style: const TextStyle(
              color: Colors.white,
              fontSize: 21,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            "\$${hotel["price"]}/night",
            style: TextStyle(
              color: AppStyles.openSpace,
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
