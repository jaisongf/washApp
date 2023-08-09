import 'package:flutter/material.dart';
import 'package:wash/screens/Pick_up/pick_up.dart';

import '../../Widgets/custom_label.dart';
import '../../Widgets/heading_six.dart';
import '../../config/constant.dart';
import '../Customer_details/customer_deatils.dart';

class PickUpList extends StatefulWidget {
  PickUpList({Key? key}) : super(key: key);

  @override
  State<PickUpList> createState() => _PickUpListState();
}

class _PickUpListState extends State<PickUpList> {
  @override
  Widget build(BuildContext context) {
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
        "service": "pickup",
        "avatar": "assets/pickUp_ic.png",
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
        "service": "pickup",
        "avatar": "assets/pickUp_ic.png",
        "location": "assets/location_ic.png",
        "phone": "assets/call.png"
      }
    ];
    final List<Map<String, String>> deliveryStatus = [
      {
        "heading": "Rajesh",
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
      },
      {
        "heading": "Suresh",
        "avatar": "assets/pickUp_ic.png",
        "status": "assets/tick_circle_ic.png"
      }
    ];
    Widget _listOfWorks(String? heading, String? subheading, String? phone,
        String? location, String? avatar) {
      return InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PickUpScreen()),
          );
        },
        child: Container(
          margin: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 4.0),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(18.0)),
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Row(children: [
                    CircleAvatar(
                        backgroundImage: AssetImage(avatar!), radius: 24),
                    const SizedBox(width: 16.0),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
        ),
      );
    }

    Widget _statusCompleted(String? heading, String? avatar) {
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
          ],
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 80.0),
        Container(
          color: Constant.globalBg,
          height: MediaQuery.of(context).size.height - 145,
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
                      headingSix: "Received orders",
                      headingColor: Constant.globalFontCol,
                      heaingSize: 16,
                      headingWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: CommonLabel(
                      name: "4",
                      bgColor: Constant.dashBoardLabelBg,
                      fontColor: Constant.bgWhite,
                      labelRadiusBig: 4,
                      labelRadiusSmall: 4),
                )
              ]),
              SizedBox(height: 8.0),
              Container(
                height: 125,
                padding: const EdgeInsets.only(left: 16.0),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    itemCount: dynamicDataList.length,
                    itemBuilder: (context, index) {
                      final Map<String, String> data = deliveryStatus[index];
                      return _statusCompleted(data['heading'], data['avatar']);
                    }),
              ),
              const SizedBox(height: 24)
            ],
          )),
        ),
      ],
    );
  }
}
