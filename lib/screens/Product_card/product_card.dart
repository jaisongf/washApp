import 'package:flutter/material.dart';

import '../../config/constant.dart';

class ProductCard extends StatefulWidget {
  final List<Map<String, dynamic>> productsData;

  ProductCard({required this.productsData});

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  int quantity = 1;

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  bool _isBottomSheetOpen = false;

  void _toggleBottomSheet() {
    setState(() {
      _isBottomSheetOpen = !_isBottomSheetOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          itemCount: (widget.productsData.length / 3).ceil(),
          itemBuilder: (context, rowIndex) {
            final startIndex = rowIndex * 3;
            final endIndex = (startIndex + 3) > widget.productsData.length
                ? widget.productsData.length
                : (startIndex + 3);
            final rowProducts =
                widget.productsData.sublist(startIndex, endIndex);

            return Row(
              children: rowProducts
                  .map((product) => Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8, bottom: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Image
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(
                                    product['imagePath'],
                                    height: 100,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(height: 10),
                                // Text (Product Name)
                                Text(product['name'],
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: Constant.globalFontCol)),
                                SizedBox(height: 0),
                                // Text (Product Price)
                                Text(
                                  'Price: \$${product['price']}',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                                // SizedBox(height: 8),
                                //
                                // Row(
                                //   mainAxisAlignment: MainAxisAlignment.center,
                                //   children: [
                                //     IconButton(
                                //       onPressed: () {
                                //         // Implement decrementQuantity
                                //       },
                                //       icon: Icon(Icons.remove),
                                //     ),
                                //     Text(
                                //         '1'), // Replace '1' with the actual quantity
                                //     IconButton(
                                //       onPressed: () {
                                //         // Implement incrementQuantity
                                //       },
                                //       icon: Icon(Icons.add),
                                //     ),
                                //   ],
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            );
          },
        ),
      ),
      bottomSheet: _isBottomSheetOpen
          ? Container(
              color: Colors.white,
              height: 200,
              child: Center(
                child: Text('This is the bottom sheet'),
              ),
            )
          : null,
    );
  }
}
