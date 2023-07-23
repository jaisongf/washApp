import 'package:flutter/material.dart';
import 'package:wash/config/constant.dart';

import '../../Widgets/card_container.dart';
import '../../Widgets/custom_appbar.dart';
import '../../Widgets/heading_six.dart';
import '../Customer_details/customer_deatils.dart';
import '../Order_details/order_details.dart';

class PickUpScreen extends StatefulWidget {
  const PickUpScreen({Key? key}) : super(key: key);

  @override
  State<PickUpScreen> createState() => _PickUpScreenState();
}

class _PickUpScreenState extends State<PickUpScreen> {
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
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CustomerDetailScreen(),
              ));
        },
        child: HeadingSix(
            headingSix: 'Kumar',
            headingWeight: FontWeight.w600,
            heaingSize: 16.0,
            headingColor: Constant.fontColorGlobal),
      ),
      const SizedBox(height: 5.0),
      HeadingSix(
          headingSix: '+91 8016783929',
          headingWeight: FontWeight.w400,
          heaingSize: 14.0,
          headingColor: Constant.fontColorGlobal),
      const SizedBox(height: 2.0),
      HeadingSix(
          headingSix: '1234 NW Bobcat Lane, St. Robert, MO 65584-5678',
          headingWeight: FontWeight.w400,
          heaingSize: 14.0,
          headingColor: Constant.fontColorGlobal),
    ]);
  }

  Widget _categoriesWidget(List<Map<String, dynamic>> items) {
    return Row(children: [
      for (var item in items)
        Expanded(
            child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => OrderDetailScreen(item: item)));
          },
          child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(children: [
                Image.asset(item['imagePath'], height: 80, width: 80),
                const SizedBox(height: 8),
                Text(
                  item['title'],
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Constant.fontColorBlack),
                ),
              ])),
        )),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // CustomAppBar(title: "More", backArrow: true),
          Align(
            alignment: Alignment.topLeft,
            child: HeadingSix(
              headingSix: 'Customer Details',
              headingWeight: FontWeight.w600,
              heaingSize: 17.0,
              headingColor: Constant.fontColorBlack,
            ),
          ),
          const SizedBox(height: 16),
          _customerDetails(),
          const SizedBox(height: 32),
          Align(
              alignment: Alignment.topLeft,
              child: HeadingSix(
                headingSix: 'Categories',
                headingWeight: FontWeight.w600,
                heaingSize: 17.0,
                headingColor: Constant.fontColorBlack,
              )),
          const SizedBox(height: 16),
          Container(
            child: ListView.builder(
                shrinkWrap: true,
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
          )
        ]);
  }
}
