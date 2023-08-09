import 'package:flutter/material.dart';
import 'package:wash/config/constant.dart';
import 'package:wash/screens/Pick_up/pick_up_item_list.dart';

import '../../Widgets/card_container.dart';
import '../../Widgets/custom_appbar.dart';
import '../../Widgets/heading_six.dart';
import '../Customer_details/customer_deatils.dart';
import '../Order_details/order_details.dart';
import '../Wash_services/wash_service.dart';

class PickUpScreen extends StatefulWidget {
  const PickUpScreen({Key? key}) : super(key: key);

  @override
  State<PickUpScreen> createState() => _PickUpScreenState();
}

class _PickUpScreenState extends State<PickUpScreen> {
  bool _isBottomSheetOpen = false;
  void _toggleBottomSheet() {
    setState(() {
      _isBottomSheetOpen = !_isBottomSheetOpen;
    });
  }

  List<Map<String, dynamic>> cardDatawo = [
    {
      'heading': 'Kumar',
      'subheading1': '+91 8975452525',
      'subheading2': '1234 NW Bobcat Lane, St. Robert, MO 65584-5678',
      'subheading3': '7 units',
      'route': '/pageA',
      'backgroundColor': Constant.bgWhite, // Background color for Card 1
    } // Add more card data as needed
  ];
  final List<Map<String, dynamic>> items = [
    {'title': 'Dry Wash', 'imagePath': 'assets/dry_wash.png'},
    {'title': 'Wash Iron', 'imagePath': 'assets/wash_iron.png'},
    {'title': 'Wash Fold', 'imagePath': 'assets/wash_fold.png'},
    {'title': 'Steam Iron', 'imagePath': 'assets/stream_iron.png'},
    {'title': 'SIR', 'imagePath': 'assets/sir.png'},
    {'title': 'SDC', 'imagePath': 'assets/sdr.png'},
  ];

  Widget _customerDetails() {
    return Container(
        margin: const EdgeInsets.all(16.0),
        height: 180.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18.0),
            image: const DecorationImage(
                image: AssetImage('assets/customer_card.png'),
                fit: BoxFit.cover)),
        child: Row(children: [
          Container(width: 80.0),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeadingSix(
                    headingSix: "Anand",
                    headingColor: Constant.bgWhite,
                    heaingSize: 22.0),
                const SizedBox(height: 8.0),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: 24,
                          height: 16,
                          child: Image.asset("assets/location_white_ic.png",
                              height: 16)),
                      SizedBox(width: 8),
                      Container(
                          width: MediaQuery.of(context).size.width - 180.0,
                          child: const HeadingSix(
                              headingSix:
                                  "Flat.no.501, ideal homes, madhura nagar, 500023",
                              headingColor: Colors.white,
                              heaingSize: 16.0))
                    ]),
                const SizedBox(height: 8.0),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: 24,
                          height: 16,
                          child: Image.asset("assets/call_white_ic.png",
                              height: 16)),
                      SizedBox(width: 8),
                      Container(
                          width: MediaQuery.of(context).size.width - 180.0,
                          child: const HeadingSix(
                              headingSix: "+91 8016783929",
                              headingColor: Colors.white,
                              heaingSize: 16.0))
                    ])
              ]),
        ]));
  }

  Widget _categoriesWidget(List<Map<String, dynamic>> items) {
    return Row(children: [
      for (var item in items)
        Expanded(
            child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const WashService()));
          },
          child: GestureDetector(
            child: Container(
                margin: const EdgeInsets.all(4.0),
                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18.0),
                ),
                child: Column(children: [
                  Image.asset(item['imagePath'], height: 80, width: 80),
                  const SizedBox(height: 4),
                  Text(
                    item['title'],
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Constant.globalFontCol),
                  ),
                ])),
          ),
        )),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: false,
      extendBodyBehindAppBar: true,
      backgroundColor: Constant.bgWhite,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "Categories",
            style: TextStyle(
                fontSize: 15,
                color: Constant.globalFontCol,
                fontWeight: FontWeight.w600),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.local_mall,
                size: 22.0,
                color: Constant.globalFontCol,
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PickUpItemList()));
              },
            )
          ]),
      body: Stack(
        children: [
          Positioned(
            child: Image.asset(
              "assets/app_top_bg.png",
              fit: BoxFit.contain,
            ),
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 64.0),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CustomerDetailScreen()),
                      );
                    },
                    child: _customerDetails()),
                const SizedBox(height: 8),
                Container(
                  color: Constant.globalBg,
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, bottom: 32, top: 16),
                  height: MediaQuery.of(context).size.height - 345,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // HeadingSix(
                        //     headingSix: 'Categories',
                        //     headingWeight: FontWeight.w500,
                        //     heaingSize: 17.0,
                        //     headingColor: Constant.fontColorBlack),
                        const SizedBox(height: 12.0),
                        ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            itemCount: (items.length / 3).ceil(),
                            itemBuilder: (context, index) {
                              int startIndex = index * 3;
                              int endIndex = (startIndex + 3 <= items.length)
                                  ? startIndex + 3
                                  : items.length;
                              List<Map<String, dynamic>> currentItems =
                                  items.sublist(startIndex, endIndex);

                              return _categoriesWidget(currentItems);
                            }),
                      ],
                    ),
                  ),
                )
              ]),
        ],
      ),
    );
  }
}
