import 'package:flutter/material.dart';

import '../../Widgets/common-textfield.dart';
import '../../Widgets/common_button.dart';
import '../../Widgets/custom_label.dart';
import '../../config/constant.dart';
import '../../screens/Home/home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  Widget _loginForm(context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 64.0),
          CommonLabel(
              name: "Login to",
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
              bgColor: Colors.transparent,
              fontColor: Constant.globalFontCol,
              labelRadiusBig: 4,
              labelRadiusSmall: 4),
          CommonLabel(
              name: "Your account",
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
              bgColor: Colors.transparent,
              fontColor: Constant.globalFontCol,
              labelRadiusBig: 4,
              labelRadiusSmall: 4),
          const SizedBox(height: 16.0),
          CommonLabel(
              name: "Mobile number",
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              bgColor: Colors.transparent,
              fontColor: Constant.globalFontCol,
              labelRadiusBig: 4,
              labelRadiusSmall: 4),
          CommonTextFormField(
            labeltxt: "Enter your Mobile number",
            labeltxtColor: Constant.textFormFieldColor,
            labeltxtSize: Constant.textFormFieldSize,
            labeltxtFontWeight: Constant.textFormFieldSizeFontW,
            focuBorColor: Constant.textFormFocuBorCol,
            focuBorWid: Constant.textFormFocuBorWid,
            enaBorColor: Constant.textFormEnaBorCol,
            enaBorWid: Constant.textFormEnaBorWid,
            borderRadiusTL: 8,
            borderRadiusBR: 8,
            contentPadHor: Constant.textFormcontentPadHor,
            contentPadHVer: Constant.textFormcontentPadHVer,
            keyborType: TextInputType.text,
            enabled: true,
            dropdownIcon: false,
            // controllerTxt: _bdoController,
          ),
          const SizedBox(height: 16.0),
          CommonLabel(
              name: "Password",
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              bgColor: Colors.transparent,
              fontColor: Constant.globalFontCol,
              labelRadiusBig: 4,
              labelRadiusSmall: 4),
          CommonTextFormField(
            labeltxt: "Enter your Password",
            labeltxtColor: Constant.textFormFieldColor,
            labeltxtSize: Constant.textFormFieldSize,
            labeltxtFontWeight: Constant.textFormFieldSizeFontW,
            focuBorColor: Constant.textFormFocuBorCol,
            focuBorWid: Constant.textFormFocuBorWid,
            enaBorColor: Constant.textFormEnaBorCol,
            enaBorWid: Constant.textFormEnaBorWid,
            borderRadiusTL: 8,
            borderRadiusBR: 8,
            contentPadHor: Constant.textFormcontentPadHor,
            contentPadHVer: Constant.textFormcontentPadHVer,
            keyborType: TextInputType.text,
            enabled: true,
            dropdownIcon: false,
            // controllerTxt: _bdoController,
          ),
          const SizedBox(height: 24.0),
          Container(
            width: MediaQuery.of(context).size.width,
            child: CommonButton(
              buttonName: "Login",
              buttonColor: Color(0xff12A5BC),
              buttonNameColor: Colors.white,
              buttonHeight: 54,
              buttonRadiusTL: 8.0,
              buttonRadiusBL: 8.0,
              buttonNameSize: 16.0,
              buttonBorder: Colors.transparent,
              buttonFunction: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const HomeScreen()), // Navigate to the next page
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/Login_bg.png',
            fit: BoxFit.cover,
          ),
          Center(
            child: _loginForm(context),
          ),
        ],
      ),
    );
  }
}
