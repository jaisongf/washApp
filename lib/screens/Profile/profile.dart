import 'package:flutter/material.dart';

import '../../Widgets/custom_label.dart';
import '../../Widgets/heading_six.dart';
import '../../config/constant.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  Widget _buildLeftColumn(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildBlock('Name', 'John Doe', context),
        SizedBox(height: 16.0),
        _buildBlock('Mobile No', '123-456-7890', context),
        SizedBox(height: 16.0),
        _buildBlock('Address', '1234 Main St, City, Country', context),
      ],
    );
  }

  Widget _buildBlock(String label, String value, context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4.0),
          Text(value),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 64.0),
          const SizedBox(height: 8),
          Container(
              color: Constant.globalBg,
              padding: const EdgeInsets.only(top: 16),
              height: MediaQuery.of(context).size.height - 135,
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  Row(children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: HeadingSix(
                          headingSix: "",
                          headingColor: Constant.globalFontCol,
                          heaingSize: 16,
                          headingWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ]),
                  Container(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: Column(children: [
                      _buildLeftColumn(context),
                    ]),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {
                      // Handle logout logic here
                    },
                    child: Text('Logout'),
                  ),
                ],
              ))),
        ]);
  }
}
