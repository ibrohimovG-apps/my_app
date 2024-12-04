import 'package:flutter/material.dart';
import 'package:my_app/base/res/styles/app_styles.dart';
import 'package:my_app/base/widgets/app_double_text.dart';
import 'package:my_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:my_app/screens/search/widgets/find_ticket.dart';
import 'package:my_app/screens/search/widgets/icon_tabs.dart';
import 'package:my_app/screens/search/widgets/news_tab.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bg_color,
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(
            height: 40,
          ),
          const Text(
            "What are\nyou looking for?",
            style: TextStyle(
              fontSize: 35,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTicketTabs(
            text1: "All tickets",
            text2: "Hotels",
          ),
          const SizedBox(
            height: 25,
          ),
          const IconTabs(
            icon: Icons.flight_takeoff_rounded,
            text: "Departure",
          ),
          const SizedBox(
            height: 25,
          ),
          const IconTabs(
            icon: Icons.flight_land_rounded,
            text: "Arrival",
          ),
          const SizedBox(
            height: 25,
          ),
          const FindTicket(),
          const SizedBox(
            height: 25,
          ),
          AppDoubleText(
            big_text: "Upcoming Flights",
            small_text: "View all",
            func: () => Navigator.pushNamed(context, "/all_tickets"),
          ),
          const SizedBox(
            height: 15,
          ),
          const NewsTab(),
        ],
      ),
    );
  }
}
