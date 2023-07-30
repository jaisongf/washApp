import 'package:flutter/material.dart';

import '../../Widgets/category_item.dart';
import '../../Widgets/heading_six.dart';
import '../../config/constant.dart';
import '../Product_card/product_card.dart';

class WashService extends StatefulWidget {
  const WashService({Key? key}) : super(key: key);

  @override
  State<WashService> createState() => _WashServiceState();
}

class _WashServiceState extends State<WashService> {
  final List<Map<String, String>> data = [
    {'imagePath': 'assets/men.png', 'text': 'Men’s'},
    {'imagePath': 'assets/women.png', 'text': 'Women’s'},
    {'imagePath': 'assets/household.png', 'text': 'Household'},
    {'imagePath': 'assets/general.png', 'text': 'General'},
    {'imagePath': 'assets/shoes.png', 'text': 'Shoes'},
  ];
  final List<Map<String, dynamic>> productsData = [
    {'imagePath': 'assets/Shirt.png', 'name': 'Product 1', 'price': 20.0},
    {'imagePath': 'assets/Shirt.png', 'name': 'Product 2', 'price': 25.0},
    {'imagePath': 'assets/Shirt.png', 'name': 'Product 2', 'price': 25.0},
    {'imagePath': 'assets/Shirt.png', 'name': 'Product 2', 'price': 25.0},
    {'imagePath': 'assets/Shirt.png', 'name': 'Product 2', 'price': 25.0},
    {'imagePath': 'assets/Shirt.png', 'name': 'Product 2', 'price': 25.0},
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 48.0),
        Container(
            height: 100.0,
            // padding: const EdgeInsets.only(bottom: 14.0, right: 8.0, left: 8.0),
            decoration: BoxDecoration(),
            child: CategoryHeading(data: data)),
        Container(
          color: Constant.globalBg,
          padding: const EdgeInsets.only(top: 16),
          height: MediaQuery.of(context).size.height - 150,
          child: SingleChildScrollView(
              child: Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: HeadingSix(
                    headingSix: 'Mens',
                    headingWeight: FontWeight.w500,
                    heaingSize: 16.0,
                    headingColor: Constant.globalFontCol,
                  ),
                ),
                ProductCard(productsData: productsData)
              ],
            ),
          )),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
