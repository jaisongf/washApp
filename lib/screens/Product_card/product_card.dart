import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: (widget.productsData.length / 3).ceil(),
      itemBuilder: (context, rowIndex) {
        final startIndex = rowIndex * 3;
        final endIndex = (startIndex + 3) > widget.productsData.length
            ? widget.productsData.length
            : (startIndex + 3);
        final rowProducts = widget.productsData.sublist(startIndex, endIndex);

        return Row(
          children: rowProducts
              .map((product) => Expanded(
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Image
                            Image.asset(
                              product['imagePath'],
                              height: 100,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 10),
                            // Text (Product Name)
                            Text(
                              product['name'],
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                            // Text (Product Price)
                            Text(
                              'Price: \$${product['price']}',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey),
                            ),
                            SizedBox(height: 8),
                            // Count with plus and minus buttons
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    // Implement decrementQuantity
                                  },
                                  icon: Icon(Icons.remove),
                                ),
                                Text(
                                    '1'), // Replace '1' with the actual quantity
                                IconButton(
                                  onPressed: () {
                                    // Implement incrementQuantity
                                  },
                                  icon: Icon(Icons.add),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ))
              .toList(),
        );
      },
    );
  }
}
