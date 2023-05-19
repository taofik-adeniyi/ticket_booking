import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_styles.dart';
import 'package:ticket_booking/utils/applayout.dart';
import 'package:ticket_booking/widgets/ticket_tabs.dart';
import 'package:ticket_booking/widgets/view_all.dart';

import '../widgets/icon_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        // body: ,
        backgroundColor: Styles.bgColor,
        body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text(
              'What are\nyou looking for?',
              style: Styles.headlineStyle1.copyWith(fontSize: 35),
            ),
            Gap(AppLayout.getHeight(20)),
            const AppTicketTabs(
                firstTab: 'Airline tickets', secondTab: 'Hotels'),
            Gap(AppLayout.getHeight(25)),
            const AppIconText(
                icon: Icons.flight_takeoff_rounded, text: 'Departure'),
            Gap(AppLayout.getHeight(15)),
            const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
            Gap(AppLayout.getHeight(25)),
            Container(
                padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getWidth(12),
                    horizontal: AppLayout.getHeight(12)),
                decoration: BoxDecoration(
                    color: const Color(0xd91130ce),
                    borderRadius:
                        BorderRadius.circular(AppLayout.getWidth(10))),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Center(
                    child: Text('Find Tickets',
                        style: Styles.textStyle.copyWith(color: Colors.white)),
                  )
                ])),
            Gap(AppLayout.getHeight(25)),
            const ViewAll(bigText: 'Upcoming Flights', smallText: 'View all'),
            Gap(AppLayout.getHeight(25)),
            Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppLayout.getHeight(15),
                          vertical: AppLayout.getWidth(15)),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(12)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade200,
                                blurRadius: 1,
                                spreadRadius: 1)
                          ]),
                      height: AppLayout.getHeight(430),
                      width: size.width * 0.42,
                      child: Column(
                        children: [
                          Container(
                            height: AppLayout.getHeight(190),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    AppLayout.getHeight(12)),
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage('assets/images/sit.jpg'))),
                          ),
                          Gap(AppLayout.getHeight(15)),
                          Text(
                              "20% discount on the early booking of this flight, Don't miss out this chance",
                              style: Styles.headlineStyle2)
                        ],
                      )),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                              width: size.width * 0.44,
                              height: AppLayout.getHeight(210),
                              decoration: BoxDecoration(
                                  color: const Color(0xFF3AB8B8),
                                  borderRadius: BorderRadius.circular(
                                      AppLayout.getHeight(18))),
                              padding: EdgeInsets.symmetric(
                                  vertical: AppLayout.getHeight(15),
                                  horizontal: AppLayout.getHeight(15)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Discount\nfor survey ',
                                      style: Styles.headlineStyle2.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                  Gap(AppLayout.getHeight(10)),
                                  Text(
                                      'Take the survey about our servicies and get a discount',
                                      style: Styles.headlineStyle2.copyWith(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                          fontSize: 18))
                                ],
                              )),
                          Positioned(
                              right: -45,
                              top: -40,
                              child: Container(
                                padding:
                                    EdgeInsets.all(AppLayout.getHeight(30)),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 18,
                                        color: const Color(0xFF189999)),
                                    color: Colors.transparent),
                                // child: ,
                              ))
                        ],
                      ),
                      Gap(AppLayout.getHeight(15)),
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(210),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(15),
                            horizontal: AppLayout.getWidth(15)),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(18)),
                            color: const Color(0xFFEC6545)),
                        child: Column(
                          children: [
                            Text(
                              'Take love',
                              style: Styles.headlineStyle2.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Gap(AppLayout.getHeight(15)),
                            RichText(
                                text: const TextSpan(children: [
                              TextSpan(
                                  text: '😘', style: TextStyle(fontSize: 32)),
                              TextSpan(
                                  text: '🥰', style: TextStyle(fontSize: 44)),
                              TextSpan(
                                  text: '😘', style: TextStyle(fontSize: 32)),
                            ]))
                          ],
                        ),
                      )
                    ],
                  )
                ])
          ],
        ));
  }
}