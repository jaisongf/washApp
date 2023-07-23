import 'package:flutter/material.dart';

import '../../Widgets/heading_six.dart';
import '../../config/constant.dart';

class OrderDetailScreen extends StatefulWidget {
  final Map<String, dynamic> item;

  OrderDetailScreen({required this.item});

  @override
  State<OrderDetailScreen> createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.item['title']),
      ),
      body: Center(
        child: Image.asset(
          widget.item['imagePath'],
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
