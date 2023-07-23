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
    {'imagePath': 'assets/T-Shirt.png', 'name': 'Product 2', 'price': 25.0},
    {'imagePath': 'assets/T-Shirt.png', 'name': 'Product 2', 'price': 25.0},
    {'imagePath': 'assets/T-Shirt.png', 'name': 'Product 2', 'price': 25.0},
    {'imagePath': 'assets/T-Shirt.png', 'name': 'Product 2', 'price': 25.0},
    {'imagePath': 'assets/T-Shirt.png', 'name': 'Product 2', 'price': 25.0},
    // Add more map entries for additional products...
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 100.0,
            // padding: const EdgeInsets.only(bottom: 14.0, right: 8.0, left: 8.0),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.8),
                  spreadRadius: 2,
                  blurRadius: 4)
            ]),
            child: CategoryHeading(data: data)),
        const SizedBox(height: 32),
        SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height - 200,
            child: SingleChildScrollView(
                child: Column(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: HeadingSix(
                    headingSix: 'Mens',
                    headingWeight: FontWeight.w600,
                    heaingSize: 17.0,
                    headingColor: Constant.fontColorGlobal,
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height - 250,
                    child: SingleChildScrollView(
                        child: ProductCard(productsData: productsData))),
              ],
            )),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
