import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:my_app/base/res/media.dart';
import 'package:my_app/base/res/styles/app_styles.dart';
import 'package:my_app/screens/profile/widgets/profile_text_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bg_color,
      appBar: AppBar(
        title: Text(
          "Tickets App",
          style: AppStyles.book_tickets,
        ),
        backgroundColor: AppStyles.bg_color,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: AppStyles.primaryColor,
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                        AppMedia.profile), // Replace with user profile image
                  ),
                  SizedBox(height: 10),
                  Text(
                    "G'ulomnazir Ibrohimov", // Replace with dynamic user name
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "gulomnaziribrohimov@gmail.com", // Replace with user email
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: Colors.black),
              title: const Text("Home"),
              onTap: () {
                Navigator.pop(context);
                // Add your navigation logic here
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.black),
              title: const Text("Settings"),
              onTap: () {
                Navigator.pop(context);
                // Add your navigation logic here
              },
            ),
            ListTile(
              leading: const Icon(Icons.help, color: Colors.black),
              title: const Text("Help & Support"),
              onTap: () {
                Navigator.pop(context);
                // Add your navigation logic here
              },
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 86,
                height: 86,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage(AppMedia.logo),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Book Tickets",
                    style: AppStyles.book_tickets,
                  ),
                  const Text(
                    "New-York",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFEF4F3),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "Premium status",
                          style: TextStyle(
                            color: Color(0xFF526799),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(child: Container()),
              Text(
                "Edit",
                style: TextStyle(
                  color: AppStyles.primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Divider(
            color: Colors.grey.shade300,
          ),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppStyles.primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 20,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: AppStyles.primaryColor,
                        size: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "You'v got a new award",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          "You have 95 flights in a year",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: -45,
                top: -45,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 20,
                      color: const Color(0xFF264CD2),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Accumulated miles",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 21,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppStyles.bg_color,
            ),
            child: Column(
              children: [
                const Text(
                  "192802",
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const ProfileTextWidget(
                  leftText: "Miles accrued",
                  rightText: "11 June 2022",
                  isColor: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                const SizedBox(
                  height: 10,
                ),
                const ProfileTextWidget(
                  leftText: "23 042",
                  rightText: "Airline CO",
                  isColor: true,
                ),
                const ProfileTextWidget(
                  leftText: "Miles",
                  rightText: "Received from",
                  isColor: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                const ProfileTextWidget(
                  leftText: "24",
                  rightText: "McDoanal's",
                  isColor: true,
                ),
                const ProfileTextWidget(
                  leftText: "Miles",
                  rightText: "Received from",
                  isColor: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                const ProfileTextWidget(
                  leftText: "52 340",
                  rightText: "DBestech",
                  isColor: true,
                ),
                const ProfileTextWidget(
                  leftText: "Miles",
                  rightText: "Received from",
                  isColor: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    //
                  },
                  child: Text(
                    "How to get more miles",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: AppStyles.primaryColor,
                    ),
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
