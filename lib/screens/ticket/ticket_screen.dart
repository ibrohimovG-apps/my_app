import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:my_app/base/res/styles/app_styles.dart';
import 'package:my_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:my_app/base/widgets/ticket_view.dart';
import 'package:my_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:my_app/base/utils/all_json.dart';
import 'package:my_app/screens/ticket/widgets/positioned_circle.dart';
import 'package:my_app/screens/ticket/widgets/ticket_text.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  // ignore: non_constant_identifier_names
  late int ticket_index = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (ModalRoute.of(context)!.settings.arguments != null) {
      var args = ModalRoute.of(context)!.settings.arguments as Map;
      ticket_index = args["index"];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bg_color,
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Tickets",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: AppStyles.bg_color,
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            children: [
              const AppTicketTabs(
                text1: "Upcoming",
                text2: "Previous",
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 16),
                child: TicketView(
                  ticket: ticketList[ticket_index],
                  isColor: true,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(16),
                color: Colors.white,
                child: const Column(
                  children: [
                    TicketText(
                      bigText1: "Flutter DB",
                      smallText1: "Passenger",
                      bigText2: "5221 264869",
                      smallText2: "Passport",
                      isColor: true,
                    ),
                    SizedBox(
                      height: 40,
                      child: AppLayoutbuilderWidget(
                        randomDivider: 16,
                        width: 6,
                        isColor: true,
                      ),
                    ),
                    TicketText(
                      bigText1: "364738 28274478",
                      smallText1: "Number of E-ticket",
                      bigText2: "B2SG28",
                      smallText2: "Booking code",
                      isColor: true,
                    ),
                    SizedBox(
                      height: 40,
                      child: AppLayoutbuilderWidget(
                        randomDivider: 16,
                        width: 6,
                        isColor: true,
                      ),
                    ),
                    TicketText(
                      bigText1: "2462",
                      smallText1: "Payment method",
                      bigText2: "\$249.99",
                      smallText2: "Price",
                      isColor: true,
                      isVisa: true,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(21),
                    bottomLeft: Radius.circular(21),
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      height: 90,
                      data: 'https:/wwww.dbestech.com',
                      barcode: Barcode.code128(),
                      drawText: false,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 16),
                child: TicketView(
                  ticket: ticketList[ticket_index],
                ),
              ),
            ],
          ),
          const PositionedCircle(isLeft: true),
          const PositionedCircle(isLeft: false),
        ],
      ),
    );
  }
}
