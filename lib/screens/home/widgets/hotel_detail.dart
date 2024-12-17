import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/base/res/styles/app_styles.dart';
import 'package:my_app/base/utils/all_json.dart';
import 'package:my_app/controller/text_expansion_controller.dart';

class HotelDetail extends StatefulWidget {
  const HotelDetail({super.key});

  @override
  State<HotelDetail> createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  late int index = 0;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    var args = ModalRoute.of(context)?.settings.arguments as Map?;

    // Safely extract the 'index' value
    if (args != null && args.containsKey('index')) {
      index =
          args['index'] as int? ?? 0; // Use a default value (e.g., 0) if null
    } else {
      index = 0; // Fallback in case arguments are missing or invalid
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            floating: false,
            pinned: true,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new),
                style: IconButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  backgroundColor: Colors.white,
                  fixedSize: const Size(100, 100),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              title: Container(
                padding: const EdgeInsets.symmetric(
                    // horizontal: 8,
                    // vertical: 4,
                    ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  // color: Colors.black.withOpacity(0.5),
                  child: Text(
                    "${hotelList[index]["place"]}",
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      shadows: [
                        Shadow(
                          blurRadius: 10,
                          color: Colors.white,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              centerTitle: false,
              background: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      "assets/images/${hotelList[index]["image"]}",
                      fit: BoxFit.cover,
                    ),
                  ),
                  /*Positioned(
                    bottom: 20,
                    right: 20,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      color: Colors.black.withOpacity(0.5),
                      child: Text(
                        "${hotelList[index]["place"]}",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                          shadows: [
                            Shadow(
                              blurRadius: 10,
                              color: AppStyles.primaryColor,
                              offset: const Offset(
                                2,
                                2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),*/
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: ExendedTextWidget(
                    text: hotelList[index]["detail"],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text(
                    "More Images",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: hotelList[index]["images"].length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, imagesIndex) {
                      return Container(
                        margin: const EdgeInsets.all(16),
                        child: Image.asset(
                          "assets/images/${hotelList[index]["images"][imagesIndex]}",
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ExendedTextWidget extends StatelessWidget {
  ExendedTextWidget({super.key, required this.text});
  final String text;

  final TextExpansionController controller = Get.put(TextExpansionController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      var textWidget = Text(
        text,
        maxLines: controller.isExpended.value ? null : 9,
        overflow: controller.isExpended.value
            ? TextOverflow.visible
            : TextOverflow.ellipsis,
        style: const TextStyle(
          fontSize: 16,
        ),
      );
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textWidget,
          GestureDetector(
            onTap: () {
              controller.toggleExpansion();
            },
            child: Text(
              controller.isExpended.value ? "Less" : "More",
              style: TextStyle(
                color: AppStyles.primaryColor,
                fontSize: 16,
              ),
            ),
          ),
        ],
      );
    });
  }
}
