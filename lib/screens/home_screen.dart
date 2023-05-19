import 'package:fluentui_icons/fluentui_icons.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking/screens/hotel_screen.dart';
import 'package:ticket_booking/screens/ticket_view.dart';
import 'package:ticket_booking/utils/app_info_list.dart';
import 'package:ticket_booking/utils/app_styles.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/widgets/view_all.dart';
// import 'package:ticket_booking/utils/app_info_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          children: [
            Container(
                // padding: const EdgeInsets.only(left:20, right:20),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const Gap(40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Good morning',
                              style: Styles.headlineStyle3,
                            ),
                            // SizedBox(height: 5),
                            const Gap(3),
                            Text('Book Tickets', style: Styles.headlineStyle1),
                          ],
                        ),
                        // Image.asset('assets/images/img_1.png')
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  // fit: BoxFit.cover,
                                  image:
                                      AssetImage('assets/images/img_1.png'))),
                        )
                      ],
                    ),
                    const Gap(25),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFF4F6FD),
                      ),
                      child: Row(
                        children: [
                          const Icon(FluentSystemIcons.ic_fluent_search_regular,
                              color: Color(0xFFBFC205)),
                          const SizedBox(width: 5),
                          Text("Search", style: Styles.headlineStyle4)
                        ],
                      ),
                    ),
                    const Gap(40),
                    const ViewAll(
                        bigText: 'Upcoming Flights', smallText: 'View all')
                  ],
                )),
            //Upcoming flights
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: ticketList
                    .map((singleTicket) => TicketView(ticket: singleTicket))
                    .toList(),
              ),
            ),
            const Gap(15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const ViewAll(bigText: 'Hotels', smallText: 'View all'),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: hotelList
                    .map((singleHotel) => HotelScreen(
                          hotel: singleHotel,
                        ))
                    .toList(),
              ),
            ),
          ],
        ));
  }
}
