import 'package:flutter/material.dart';
import 'package:my_app/base/bot_nav_bar.dart';
import 'package:my_app/base/utils/all_json.dart';
import 'package:my_app/screens/auth/screens/sign_in_screen.dart';
import 'package:my_app/screens/auth/screens/sign_up_screen.dart';
import 'package:my_app/screens/auth/screens/splash_screen.dart';
import 'package:my_app/screens/home/widgets/all_hotels.dart';
import 'package:my_app/screens/home/widgets/all_tickets.dart';
import 'package:my_app/screens/home/widgets/hotel_detail.dart';
import 'package:my_app/screens/ticket/ticket_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.splashPage: (context) => const SplashPage(),
        AppRoutes.signInScreen: (context) => const SignInScreen(),
        AppRoutes.signUpScreen: (context) => const SignUpScreen(),
        AppRoutes.homePage: (context) => BottomNavBar(),
        AppRoutes.allTickets: (context) => const AllTickets(),
        AppRoutes.allHotels: (context) => const AllHotels(),
        AppRoutes.ticketScreen: (context) => const TicketScreen(),
        AppRoutes.hotelDetail: (context) => const HotelDetail(),
      },
    );
  }
}
