import 'package:flutter/material.dart';
import 'package:wash/config/constant.dart';

import '../../Widgets/border_bottom.dart';
import '../../Widgets/common_button.dart';
import '../../Widgets/heading_six.dart';

class CustomerDetailScreen extends StatefulWidget {
  CustomerDetailScreen({Key? key}) : super(key: key);

  @override
  State<CustomerDetailScreen> createState() => _CustomerDetailScreenState();
}

class _CustomerDetailScreenState extends State<CustomerDetailScreen> {
  final List<Map<String, String>> dataList = [
    {'label': 'Name', 'text': 'Kumar'},
    {'label': 'Contact', 'text': '+91 6292720277'},
    {'label': 'Address', 'text': '8-9/10-1, Gandhi nagar '},
    {
      'label': 'Delivery instructions',
      'text': 'Dont call before reaching the location'
    }
  ];
  final List<Map<String, String>> dataListForItem = [
    {'item': 'Shirt', 'unit': '4 Units', 'amount': '400'},
    {'item': 'Jeans', 'unit': '3 Units', 'amount': '200'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
          "Order",
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
        )),
        body: Container(
          padding: const EdgeInsets.only(left: 18, right: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: HeadingSix(
                    headingSix: 'Customer details',
                    headingWeight: FontWeight.w600,
                    heaingSize: 17.0,
                    headingColor: Constant.fontColorBlack,
                  )),
              const SizedBox(height: 16),
              ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: dataList.length, // Number of rows in the list
                  itemBuilder: (BuildContext context, int index) {
                    final label = dataList[index]['label'];
                    final text = dataList[index]['text'];
                    return Container(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                width: 130.0,
                                child: Text(label!,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                        color: Constant.fontColorBlack))),
                            Expanded(
                                child: Text(text!,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                        color: Constant.fontColorGlobal))),
                          ]),
                    );
                  }),
              const SizedBox(height: 32),
              Align(
                  alignment: Alignment.topLeft,
                  child: HeadingSix(
                    headingSix: 'Items',
                    headingWeight: FontWeight.w600,
                    heaingSize: 17.0,
                    headingColor: Constant.fontColorBlack,
                  )),
              const SizedBox(height: 16),
              ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount:
                      dataListForItem.length, // Number of rows in the list
                  itemBuilder: (BuildContext context, int index) {
                    final item = dataListForItem[index]['item'];
                    final unit = dataListForItem[index]['unit'];
                    final amount = dataListForItem[index]['amount'];
                    return Container(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                width: 130.0,
                                child: Text(item!,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                        color: Constant.fontColorBlack))),
                            Container(
                                width: 130.0,
                                child: Text(unit!,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                        color: Constant.fontColorBlack))),
                            Expanded(
                                child: Text(amount!,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                        color: Constant.fontColorGlobal))),
                          ]),
                    );
                  }),
              const SizedBox(height: 8),
              BorderBottom(),
              const SizedBox(height: 8),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        width: 130.0,
                        child: Text("Total Amount",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                color: Constant.fontColorBlack))),
                    Container(
                        width: 130.0,
                        child: Text("",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                color: Constant.fontColorGlobal))),
                    Expanded(
                        child: Text("290",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                color: Constant.fontColorGlobal))),
                  ]),
              const SizedBox(height: 8),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        width: 130.0,
                        child: Text("Note:",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                color: Constant.fontColorBlack))),
                    Expanded(
                        child: Text("Collect cash after delivery",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                color: Constant.fontColorGlobal))),
                  ]),
              const SizedBox(height: 16),
            ],
          ),
        ),
        bottomNavigationBar: SizedBox(
          child: CommonButton(
            buttonName: "Delivery",
            buttonColor: Color(0xff1976D3),
            buttonNameColor: Colors.white,
            buttonHeight: 54,
            buttonRadiusTL: 0.0,
            buttonRadiusBL: 0.0,
            buttonBorder: Colors.transparent,
            buttonFunction: () {
              Navigator.pop(context);
            },
          ),
        ));
  }
}
