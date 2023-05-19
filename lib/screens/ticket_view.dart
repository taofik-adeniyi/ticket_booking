import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:ticket_booking/utils/app_styles.dart';
import 'package:ticket_booking/utils/applayout.dart';
import 'package:ticket_booking/widgets/layout_builder.dart';
// import 'package:flutter/cupertino.dart';
import 'package:ticket_booking/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context); //AppLayout.getSize(context)
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid == true ? 183 : 189),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // const Gap(15),
            Container(
                decoration: BoxDecoration(
                  color:
                      isColor == null ? const Color(0xFF526799) : Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21),
                  ),
                ),
                // color: Colors.red,
                padding: EdgeInsets.all(AppLayout.getHeight(16)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(ticket['from']['code'],
                            style: Styles.headlineStyle3.copyWith(
                                color: isColor == null
                                    ? Colors.white
                                    : Colors.black)),
                        Expanded(child: Container()),
                        const ThickContainer(isColor: true),
                        Expanded(
                            child: Stack(children: [
                          SizedBox(
                            height: AppLayout.getHeight(24),
                            child:
                                const AppLayoutBuilder(sections: 6, width: 5.0),
                          ),
                          Center(
                              child: Transform.rotate(
                            angle: 1.5,
                            child: Icon(Icons.local_airport_rounded,
                                color: isColor == null
                                    ? Colors.white
                                    : const Color(0xFF8ACCF7)),
                          )),
                        ])),
                        const ThickContainer(isColor: true),
                        Expanded(child: Container()),
                        Text(ticket['to']['code'],
                            style: Styles.headlineStyle3.copyWith(
                                color: isColor == null
                                    ? Colors.white
                                    : Colors.black)),
                      ],
                    ),
                    const Gap(3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: AppLayout.getWidth(100),
                          child: Text(ticket['from']['name'],
                              style: isColor == null
                                  ? Styles.headlineStyle4
                                      .copyWith(color: Colors.white)
                                  : Styles.headlineStyle4),
                        ),
                        Text(ticket['flying_time'],
                            style: Styles.headlineStyle3.copyWith(
                                color: isColor == null
                                    ? Colors.white
                                    : Colors.black)),
                        SizedBox(
                          width: AppLayout.getWidth(100),
                          child: Text(ticket['to']['name'],
                              textAlign: TextAlign.end,
                              style: isColor == null
                                  ? Styles.headlineStyle4
                                      .copyWith(color: Colors.white)
                                  : Styles.headlineStyle4),
                        ),
                      ],
                    )
                  ],
                )),
            /*
          show the blue part of the ticket
          */
            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, top: 10, right: 16, bottom: 16),
                    child: LayoutBuilder(builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(
                            (constraints.constrainWidth() / 15).floor(),
                            (index) => SizedBox(
                                  width: 5,
                                  height: 1,
                                  child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: isColor == null
                                              ? Colors.white
                                              : Colors.grey.shade300)),
                                )),
                      );
                    }),
                  )),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10))),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: isColor == null ? Styles.orangeColor : Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(isColor == null ? 21 : 0),
                    bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                  )),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ticket['date'],
                              style: Styles.headlineStyle3.copyWith(
                                  color: isColor == null
                                      ? Colors.white
                                      : Colors.black)),
                          const Gap(5),
                          Text("Date",
                              style: isColor == null
                                  ? Styles.headlineStyle3
                                      .copyWith(color: Colors.white)
                                  : Styles.headlineStyle3)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(ticket['departure_time'],
                              style: Styles.headlineStyle3.copyWith(
                                  color: isColor == null
                                      ? Colors.white
                                      : Colors.black)),
                          const Gap(5),
                          Text("Departure time",
                              style: isColor == null
                                  ? Styles.headlineStyle3
                                      .copyWith(color: Colors.white)
                                  : Styles.headlineStyle3)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(ticket['number'].toString(),
                              style: Styles.headlineStyle3.copyWith(
                                  color: isColor == null
                                      ? Colors.white
                                      : Colors.black)),
                          const Gap(5),
                          Text("Number",
                              style: isColor == null
                                  ? Styles.headlineStyle3
                                      .copyWith(color: Colors.white)
                                  : Styles.headlineStyle3)
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
