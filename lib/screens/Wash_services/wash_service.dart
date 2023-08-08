import 'package:flutter/material.dart';

import '../../Widgets/category_item.dart';
import '../../Widgets/custom_label.dart';
import '../../Widgets/heading_six.dart';
import '../../config/constant.dart';
import '../Product_card/product_card.dart';

class WashService extends StatefulWidget {
  const WashService({Key? key}) : super(key: key);

  @override
  State<WashService> createState() => _WashServiceState();
}

class _WashServiceState extends State<WashService> {
  bool _isBottomSheetOpen = false;

  void _toggleBottomSheet() {
    setState(() {
      _isBottomSheetOpen = !_isBottomSheetOpen;
    });
  }

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
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.grey[200], // Set your desired background color
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CommonLabel(
                      name: "Product1",
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      bgColor: Colors.transparent,
                      fontColor: Constant.globalFontCol,
                      labelRadiusBig: 4,
                      labelRadiusSmall: 4),
                  SizedBox(height: 4.0),
                  CommonLabel(
                      name: "\$20",
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      bgColor: Colors.transparent,
                      fontColor: Constant.globalFontCol,
                      labelRadiusBig: 4,
                      labelRadiusSmall: 4),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          // Implement decrementQuantity
                        },
                        icon: Icon(
                          Icons.remove,
                          size: 25,
                        ),
                      ),
                      Text('1',
                          style: TextStyle(
                              fontSize:
                                  18.0)), // Replace '1' with the actual quantity
                      IconButton(
                        onPressed: () {
                          // Implement incrementQuantity
                        },
                        icon: Icon(
                          Icons.add,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Close'),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget productBlocks() {
    return Row(
      children: [
        GestureDetector(
          onTap: () => _showBottomSheet(context),
          child: Container(
            width: MediaQuery.of(context).size.width / 3 - 25,
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/Shirt.png",
                      height: 100, width: double.infinity, fit: BoxFit.cover),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Product 1",
                          style: TextStyle(fontWeight: FontWeight.bold))),
                  Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                      child: Text('\$20.0'))
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 16),
        GestureDetector(
          onTap: () => _showBottomSheet(context),
          child: Container(
            width: MediaQuery.of(context).size.width / 3 - 25,
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/Shirt.png",
                      height: 100, width: double.infinity, fit: BoxFit.cover),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Product 1",
                          style: TextStyle(fontWeight: FontWeight.bold))),
                  Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                      child: Text('\$20.0'))
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 16),
        GestureDetector(
          onTap: () => _showBottomSheet(context),
          child: Container(
            width: MediaQuery.of(context).size.width / 3 - 25,
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/Shirt.png",
                      height: 100, width: double.infinity, fit: BoxFit.cover),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Product 1",
                          style: TextStyle(fontWeight: FontWeight.bold))),
                  Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                      child: Text('\$20.0'))
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Services",
          style: TextStyle(
              fontSize: 16,
              color: Constant.globalFontCol,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Stack(
        children: [
          SizedBox(height: 48),
          Positioned(
            child: Image.asset(
              "assets/app_top_bg.png",
              fit: BoxFit.contain,
            ),
          ),
          Column(
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
                height: MediaQuery.of(context).size.height - 350,
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
                      productBlocks()
                      // ProductCard(productsData: productsData)
                    ],
                  ),
                )),
              ),
              const SizedBox(height: 16),
            ],
          ),
          // SingleChildScrollView(
          //     child: bottomNavScreen.elementAt(state.tabIndex)),
        ],
      ),
    );
  }
}
