import 'package:flutter/material.dart';
import 'package:wash/config/constant.dart';

import '../../Widgets/border_bottom.dart';
import '../../Widgets/common_button.dart';
import '../../Widgets/custom_label.dart';
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
        primary: false,
        extendBodyBehindAppBar: true,
        backgroundColor: Constant.bgWhite,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              "Customer details",
              style: TextStyle(
                  fontSize: 15,
                  color: Constant.globalFontCol,
                  fontWeight: FontWeight.w600),
            )),
        body: Stack(
          children: [
            Positioned(
              child: Image.asset(
                "assets/app_top_bg.png",
                fit: BoxFit.contain,
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 48.0),
                  Container(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, bottom: 24, top: 8),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            HeadingSix(
                                headingSix: "Anand",
                                headingColor: Constant.globalFontCol,
                                heaingSize: 18,
                                headingWeight: FontWeight.w600),
                            SizedBox(height: 4),
                            Container(
                              child: Column(
                                children: [
                                  Row(children: [
                                    Icon(Icons.location_on,
                                        color: Constant.globalFontColDull,
                                        size: 14),
                                    const SizedBox(width: 8.0),
                                    CommonLabel(
                                        name: "501, Street name, HYD",
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                        bgColor: Colors.transparent,
                                        fontColor: Constant.globalFontCol,
                                        labelRadiusBig: 4,
                                        labelRadiusSmall: 4),
                                  ]),
                                  Row(children: [
                                    Icon(Icons.phone_iphone,
                                        color: Constant.globalFontColDull,
                                        size: 14),
                                    const SizedBox(width: 8.0),
                                    CommonLabel(
                                        name: "+91 65655 52525",
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                        bgColor: Colors.transparent,
                                        fontColor: Constant.globalFontCol,
                                        labelRadiusBig: 4,
                                        labelRadiusSmall: 4),
                                  ])
                                ],
                              ),
                            ),
                            SizedBox(height: 6),
                            CommonLabel(
                                paddingTop: 6,
                                paddingBottom: 6,
                                imagetrue: true,
                                imageic: Image.asset("assets/truck-fast.png"),
                                name:
                                    "   Delivery Instructions:Ring bell twice",
                                bgColor: Constant.customBrowcol,
                                fontColor: Constant.customBrowFoncol,
                                labelRadiusBig: 16,
                                labelRadiusSmall: 16)
                          ])),
                  Container(
                    color: Constant.globalBg,
                    padding: EdgeInsets.all(16),
                    height: MediaQuery.of(context).size.height - 245,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                                top: 12, bottom: 12, left: 16, right: 16),
                            decoration: BoxDecoration(
                                color: Constant.bgWhite,
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Row(
                              children: [
                                CircleAvatar(
                                    backgroundColor: Constant.customcoun,
                                    radius: 20.0,
                                    child: Text(
                                      "2",
                                      style: TextStyle(color: Constant.bgWhite),
                                    )),
                                SizedBox(width: 16),
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    HeadingSix(
                                        headingSix: "Saree",
                                        headingColor: Constant.globalFontCol,
                                        heaingSize: 16,
                                        headingWeight: FontWeight.w600),
                                    HeadingSix(
                                        headingSix: "1 Units = ₹50",
                                        headingColor:
                                            Constant.globalFontColDull,
                                        heaingSize: 13,
                                        headingWeight: FontWeight.w500),
                                  ],
                                )),
                                Container(
                                  child: HeadingSix(
                                      headingSix: "100",
                                      headingColor: Constant.globalFontCol,
                                      heaingSize: 14,
                                      headingWeight: FontWeight.w600),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.delete),
                                  iconSize: 20.0,
                                  onPressed: () {
                                    // Handle action
                                  },
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 4),
                          Container(
                            padding: const EdgeInsets.only(
                                top: 12, bottom: 12, left: 16, right: 16),
                            decoration: BoxDecoration(
                                color: Constant.bgWhite,
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Row(
                              children: [
                                CircleAvatar(
                                    backgroundColor: Constant.customcoun,
                                    radius: 20.0,
                                    child: Text(
                                      "2",
                                      style: TextStyle(color: Constant.bgWhite),
                                    )),
                                SizedBox(width: 16),
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    HeadingSix(
                                        headingSix: "Saree",
                                        headingColor: Constant.globalFontCol,
                                        heaingSize: 16,
                                        headingWeight: FontWeight.w600),
                                    HeadingSix(
                                        headingSix: "1 Units = ₹50",
                                        headingColor:
                                            Constant.globalFontColDull,
                                        heaingSize: 13,
                                        headingWeight: FontWeight.w500),
                                  ],
                                )),
                                Container(
                                  child: HeadingSix(
                                      headingSix: "100",
                                      headingColor: Constant.globalFontCol,
                                      heaingSize: 14,
                                      headingWeight: FontWeight.w600),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.delete),
                                  iconSize: 20.0,
                                  onPressed: () {
                                    // Handle action
                                  },
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 4),
                          Container(
                            padding: const EdgeInsets.only(
                                top: 12, bottom: 12, left: 16, right: 16),
                            decoration: BoxDecoration(
                                color: Constant.bgWhite,
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Row(
                              children: [
                                CircleAvatar(
                                    backgroundColor: Constant.customcoun,
                                    radius: 20.0,
                                    child: Text(
                                      "2",
                                      style: TextStyle(color: Constant.bgWhite),
                                    )),
                                SizedBox(width: 16),
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    HeadingSix(
                                        headingSix: "Saree",
                                        headingColor: Constant.globalFontCol,
                                        heaingSize: 16,
                                        headingWeight: FontWeight.w600),
                                    HeadingSix(
                                        headingSix: "1 Units = ₹50",
                                        headingColor:
                                            Constant.globalFontColDull,
                                        heaingSize: 13,
                                        headingWeight: FontWeight.w500),
                                  ],
                                )),
                                Container(
                                  child: HeadingSix(
                                      headingSix: "100",
                                      headingColor: Constant.globalFontCol,
                                      heaingSize: 14,
                                      headingWeight: FontWeight.w600),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.delete),
                                  iconSize: 20.0,
                                  onPressed: () {
                                    // Handle action
                                  },
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 6.0),
                          Container(
                            padding: const EdgeInsets.only(
                                top: 12, bottom: 12, left: 16, right: 16),
                            decoration: BoxDecoration(
                                color: Constant.bgWhite,
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    HeadingSix(
                                        headingSix: "Total",
                                        headingColor: Constant.globalFontCol,
                                        heaingSize: 16,
                                        headingWeight: FontWeight.w600),
                                  ],
                                )),
                                Container(
                                  child: HeadingSix(
                                      headingSix: "100",
                                      headingColor: Constant.globalFontCol,
                                      heaingSize: 14,
                                      headingWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          CommonLabel(
                              paddingTop: 6,
                              paddingBottom: 6,
                              name: "  Note : Amount paid online",
                              bgColor: Constant.customcoun1,
                              fontColor: Constant.globalFontCol,
                              labelRadiusBig: 16,
                              labelRadiusSmall: 16),
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: SizedBox(
          child: CommonButton(
            buttonName: "Delivered",
            buttonColor: Color(0xff52BF83),
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
