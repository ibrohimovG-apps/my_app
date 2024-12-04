import 'package:flutter/material.dart';
import 'package:my_app/base/res/styles/app_styles.dart';
import 'package:my_app/base/utils/all_json.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bg_color,
      appBar: AppBar(
        title: const Text("All hotels"),
        backgroundColor: AppStyles.bg_color,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          childAspectRatio: 0.6,
        ),
        itemCount: hotelList.length,
        itemBuilder: (BuildContext context, int index) {
          var singleHotel = hotelList[index];
          return HotelsGridView(
            hotel: singleHotel,
            index: index,
          );
        },
      ),
    );
  }
}

class HotelsGridView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  final int index;
  const HotelsGridView({super.key, required this.hotel, required this.index});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          AppRoutes.hotelDetail,
          arguments: {
            "index": index,
          },
        );
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        // width: size.width * 0.6,
        height: 350,
        decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                // height: 180,
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
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              hotel["place"],
              style: TextStyle(
                color: AppStyles.openSpace,
                fontSize: 22,
              ),
            ),
            Text(
              hotel["destination"],
              style: const TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
            Text(
              "\$${hotel["price"]}/night",
              style: TextStyle(
                color: AppStyles.openSpace,
                fontSize: 26,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
