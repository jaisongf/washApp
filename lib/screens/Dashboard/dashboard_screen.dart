import 'package:flutter/material.dart';

import '../../Widgets/card_container.dart';
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
        Row(children: [
          _orderStatusItem(
              'assets/order_delivery.png', 'Order to deliver', '3'),
          _orderStatusItem(
              'assets/delivered_order.png', 'Delivered orders', '1'),
        ]),
        const SizedBox(height: 24.0),
        const HeadingSix(
          headingSix: 'Todays Orders',
          headingWeight: FontWeight.w600,
          heaingSize: 17.0,
        ),
        const SizedBox(height: 8.0),
        CustomCardList(cardData: cardData),
        const SizedBox(height: 24.0),
        const HeadingSix(
            headingSix: 'Delivered orders',
            headingWeight: FontWeight.w600,
            heaingSize: 17.0),
        const SizedBox(height: 8.0),
        CustomCardList(cardData: cardDatawo),
      ],
    );
  }
}
