import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:my_app/base/res/media.dart';
import 'package:my_app/base/res/styles/app_styles.dart';
import 'package:my_app/base/utils/all_json.dart';
import 'package:my_app/base/widgets/app_double_text.dart';
import 'package:my_app/base/widgets/ticket_view.dart';
import 'package:my_app/screens/home/widgets/hotels.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bg_color,
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good morning",
                          style: AppStyles.good_morning,
                        ),
                        Text(
                          "Book tickets",
                          style: AppStyles.book_tickets,
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage(AppMedia.logo),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  child: const Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text("Search"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                AppDoubleText(
                  big_text: "Upcoming Flights",
                  small_text: "View all",
                  func: () => Navigator.pushNamed(context, "/all_tickets"),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ticketList
                        .map(
                          (singleTicket) => GestureDetector(
                            onTap: () {
                              var index = ticketList.indexOf(singleTicket);
                              Navigator.pushNamed(
                                context,
                                AppRoutes.ticketScreen,
                                arguments: {
                                  "index": index,
                                },
                              );
                            },
                            child: TicketView(
                              ticket: singleTicket,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                AppDoubleText(
                  big_text: "Hotels",
                  small_text: "View all",
                  func: () => Navigator.pushNamed(context, "/all_hotels"),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: hotelList
                        .map(
                          (singleHotel) => GestureDetector(
                            onTap: () {
                              var index = hotelList.indexOf(singleHotel);
                              Navigator.pushNamed(
                                context,
                                AppRoutes.hotelDetail,
                                arguments: {
                                  "index": index,
                                },
                              );
                            },
                            child: Hotels(
                              hotel: singleHotel,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}