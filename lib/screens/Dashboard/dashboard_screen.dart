import 'package:flutter/material.dart';

import '../../Widgets/card_container.dart';
import '../../Widgets/custom_label.dart';
import '../../Widgets/heading_six.dart';
import '../../config/constant.dart';
import '../Order_details/order_details.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<Map<String, dynamic>> cardData = [
    {
      'heading': 'Kumar',
      'subheading1': '+91 8975452525',
      'subheading2': '1234 NW Bobcat Lane, St. Robert, MO 65584-5678',
      'subheading3': '7 units',
      'route': "",
      'backgroundColor': const Color(0xffFCBC98), // Background color for Card 1
    },
    {
      'heading': 'Shiva',
      'subheading1': 'Subheading 2A',
      'subheading2': 'Subheading 2B',
      'subheading3': '3 units',
      'route': '/pageB',
      'backgroundColor': const Color(0xffFCBC98), // Background color for Card 2
    },
    {
      'heading': 'Mahesh',
      'subheading1': 'Subheading 3A',
      'subheading2': 'Subheading 3B',
      'subheading3': '4 units',
      'route': '/pageC',
      'backgroundColor': const Color(0xffE9EDF8), // Background color for Card 3
    },
    // Add more card data as needed
  ];
  List<Map<String, dynamic>> cardDatawo = [
    {
      'heading': 'Kumar',
      'subheading1': '+91 8975452525',
      'subheading2': '1234 NW Bobcat Lane, St. Robert, MO 65584-5678',
      'subheading3': '7 units',
      'route': '/pageA',
      'backgroundColor': const Color(0xffD8D8D8), // Background color for Card 1
    } // Add more card data as needed
  ];
  final List<Map<String, String>> dynamicDataList = [
    {
      "heading": "Anand",
      "subheading": "Anna nagar",
      "service": "pickup",
      "avatar": "assets/pickUp_ic.png",
      "location": "assets/location_ic.png",
      "phone": "assets/call.png"
    },
    {
      "heading": "Siva",
      "subheading": "Porur",
      "service": "delivery",
      "avatar": "assets/deliver_ic.png",
      "location": "assets/location_ic.png",
      "phone": "assets/call.png"
    },
    {
      "heading": "Mahesh",
      "subheading": "T.Nagar",
      "service": "pickup",
      "avatar": "assets/pickUp_ic.png",
      "location": "assets/location_ic.png",
      "phone": "assets/call.png"
    },
    {
      "heading": "Dinesh",
      "subheading": "Avadi",
      "service": "delivery",
      "avatar": "assets/deliver_ic.png",
      "location": "assets/location_ic.png",
      "phone": "assets/call.png"
    }
  ];
  final List<Map<String, String>> deliveryStatus = [
    {
      "heading": "Rajesh",
      "avatar": "assets/deliver_ic.png",
      "status": "assets/tick_circle_ic.png"
    },
    {
      "heading": "Suresh",
      "avatar": "assets/pickUp_ic.png",
      "status": "assets/tick_circle_ic.png"
    },
    {
      "heading": "Suresh",
      "avatar": "assets/pickUp_ic.png",
      "status": "assets/tick_circle_ic.png"
    },
    {
      "heading": "Suresh",
      "avatar": "assets/pickUp_ic.png",
      "status": "assets/tick_circle_ic.png"
    }
  ];
  Widget _listOfWorks(String? heading, String? subheading, String? phone,
      String? location, String? avatar) {
    return Container(
      margin: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 4.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(18.0)),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Row(children: [
                CircleAvatar(backgroundImage: AssetImage(avatar!), radius: 24),
                const SizedBox(width: 16.0),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  HeadingSix(
                      headingSix: heading!,
                      heaingSize: 16.0,
                      headingColor: Constant.globalFontCol,
                      headingWeight: FontWeight.w500),
                  HeadingSix(
                      headingSix: subheading!,
                      heaingSize: 13.0,
                      headingColor: Constant.globalFontColDull,
                      headingWeight: FontWeight.w400),
                ])
              ])),
          Row(
            children: [
              const SizedBox(width: 20),
              Image.asset(location!, width: 20, height: 20),
              const SizedBox(width: 10),
              Image.asset(phone!, width: 38, height: 38),
            ],
          )
        ],
      ),
    );
  }

  Widget _statusCompleted(String? heading, String? avatar, String? status) {
    return Container(
      margin: const EdgeInsets.only(right: 8.0),
      width: 120.0,
      decoration: BoxDecoration(
          color: Constant.bgWhite, borderRadius: BorderRadius.circular(18.0)),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HeadingSix(
              headingSix: heading!,
              heaingSize: 16,
              headingColor: Constant.globalFontCol,
              headingWeight: FontWeight.w500),
          const SizedBox(height: 8.0),
          Image.asset(avatar!, width: 40, height: 40),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(status!, width: 20, height: 20),
          )
        ],
      ),
    );
  }

  Widget _statusWidget(
      String? statusName,
      Color? statusBg,
      String? statusBgImage,
      Color? stausBarColor,
      String? statusCount,
      String? statusIcon) {
    return Container(
      padding:
          const EdgeInsets.only(top: 12.0, bottom: 12.0, right: 16, left: 16),
      decoration: BoxDecoration(
          color: statusBg, borderRadius: BorderRadius.circular(18.0)),
      child: Container(
          height: 100.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(statusBgImage!), fit: BoxFit.fill)),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(children: [
              Expanded(
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Image.asset(statusIcon!, width: 24, height: 24)),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(statusCount!,
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w200,
                        color: Constant.bgWhite)),
              )
            ]),
            const SizedBox(height: 14.0),
            Row(children: [
              Container(
                  width: 80.0,
                  child: HeadingSix(
                      headingSix: statusName,
                      headingColor: Constant.bgWhite,
                      heaingSize: 13.0)),
              Expanded(
                  child: SizedBox(
                      height: 5.0, child: Container(color: stausBarColor)))
            ])
          ])),
    );
  }

  Widget _orderStatusItem(String imagePath, String title, String count) {
    return Expanded(
      flex: 1,
      child: Row(
        children: [
          Container(child: Image.asset(imagePath)),
          const SizedBox(width: 16),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeadingSix(
                  headingSix: count,
                  headingWeight: FontWeight.w700,
                  heaingSize: 22,
                  headingColor: Constant.fontColorGlobal,
                ),
                Container(
                  width: 80,
                  child: HeadingSix(
                    headingSix: title,
                    headingWeight: FontWeight.w500,
                    heaingSize: 15,
                    headingColor: Constant.fontColorGlobal,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 48.0),
          Container(
              margin: const EdgeInsets.only(left: 14, right: 14),
              child: Row(children: [
                Expanded(
                    flex: 1,
                    child: _statusWidget(
                        "Pick up",
                        Constant.statusBgBlue,
                        "assets/dash_pattern.png",
                        Constant.statusBgBlueLine,
                        "3",
                        "assets/pick_up_box.png")),
                const SizedBox(width: 16.0),
                Expanded(
                    flex: 1,
                    child: _statusWidget(
                        "Delivery",
                        Constant.statusBgVol,
                        "assets/dash_pattern.png",
                        Constant.statusBgVolLine,
                        "15",
                        "assets/delivery_truck-fast.png"))
              ])),
          Container(child: Image.asset("assets/dashboard_waves.png")),
          Container(
              color: Constant.globalBg,
              padding: const EdgeInsets.only(top: 16),
              height: MediaQuery.of(context).size.height - 250,
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8), // Remove padding
                      // Set the height of each item
                      itemCount: dynamicDataList.length,
                      itemBuilder: (context, index) {
                        final Map<String, String> data = dynamicDataList[index];
                        return _listOfWorks(data['heading'], data['subheading'],
                            data['location'], data['phone'], data['avatar']);
                      }),
                  SizedBox(height: 16.0),
                  Row(children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: HeadingSix(
                          headingSix: "Delivered / Picked up orders",
                          headingColor: Constant.globalFontCol,
                          heaingSize: 16,
                          headingWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: CommonLabel(
                          name: "1",
                          bgColor: Constant.dashBoardLabelBg,
                          fontColor: Constant.bgWhite,
                          labelRadiusBig: 4,
                          labelRadiusSmall: 4),
                    )
                  ]),
                  SizedBox(height: 8.0),
                  Container(
                    height: 145,
                    padding: const EdgeInsets.only(left: 16.0),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                        itemCount: dynamicDataList.length,
                        itemBuilder: (context, index) {
                          final Map<String, String> data =
                              deliveryStatus[index];
                          return _statusCompleted(
                              data['heading'], data['avatar'], data['status']);
                        }),
                  ),
                  const SizedBox(height: 24)
                ],
              ))),
        ]);
  }
}
