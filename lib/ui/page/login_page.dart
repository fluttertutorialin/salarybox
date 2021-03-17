import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salarybox/controller/controller.dart';
import 'package:salarybox/resource/images.dart';
import 'package:salarybox/resource/routes.dart';
import 'package:salarybox/resource/style.dart';
import 'package:salarybox/resource/value.dart';
import 'package:salarybox/utils/extensions.dart';

class LoginPage extends StatefulWidget {
  @override
  createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  @override
  build(BuildContext context) => Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Image.asset(safeAndSecureImage, scale: 3),
      body: ListView(children: [
        Container(
            padding: EdgeInsets.all(15),
            child: Column(children: [
              Row(children: [
                GestureDetector(
                    child: Row(children: [
                      Icon(Icons.language, color: Colors.black54, size: 18),
                      Padding(
                          padding: EdgeInsets.all(5),
                          child: Text('language'.tr, style: titleLanguage))
                    ]),
                    onTap: () => Get.toNamed(selectLanguageRoute)),
                Row(children: [])
              ]),
              SizedBox(height: 15),
              Text('titleLogin'.tr, style: titleLoginStyle),
              SizedBox(height: 25),
              IntrinsicHeight(
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          border: Border.all(color: Colors.black12, width: 1),
                          borderRadius: BorderRadius.circular(1)),
                      child: Row(children: [
                        Container(
                            padding: EdgeInsets.all(10),
                            child: Row(children: [
                              Image.asset('assets/images/flag_in.png',
                                  scale: 4),
                              SizedBox(width: 10),
                              Text('+91', style: selectCountryCodeStyle)
                            ])),
                        SizedBox(width: 10),
                        Padding(
                            padding: EdgeInsets.all(5),
                            child:
                                VerticalDivider(color: Colors.grey, width: 2)),
                        SizedBox(width: 15),
                        Expanded(flex: 1, child: _mobileInput())
                      ]))),
              SizedBox(height: 10),
              InkWell(
                  onTap: () => Get.toNamed(otpRoute),
                  child: Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(child: Text('NEXT', style: buttonStyle))))
            ]))
      ]));

  _mobileInput() => widget.inputField(LoginController.to.mobileController,
      validation: LoginController.to.isMobileValid,
      onChanged: LoginController.to.changeMobile,
      maxLength: mobileMaxLength,
      labelText: 'hintMobile'.tr,
      keyboardType: TextInputType.number);
}
