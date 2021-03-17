import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:salarybox/resource/images.dart';
import 'package:salarybox/resource/style.dart';

class OTPPage extends StatelessWidget {
  final _pinPutController = TextEditingController();
  final _pinPutFocusNode = FocusNode();

  final BoxDecoration pinPutDecoration = BoxDecoration(
      color: Colors.grey.withOpacity(0.1),
      border: Border.all(width: 1, color: Colors.grey),
      borderRadius: BorderRadius.circular(10.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(elevation: 0.0),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Image.asset(safeAndSecureImage, scale: 3),
        body: Container(
            padding: EdgeInsets.all(10),
            child: Column(children: [
              Align(
                  alignment: Alignment.center,
                  child: Column(children: [
                    Text('titleOTP'.tr,
                        textAlign: TextAlign.center, style: titleLoginStyle),
                    SizedBox(height: 10),
                    Text('+919586331823',
                        textAlign: TextAlign.center, style: otpMobileStyle)
                  ])),
              SizedBox(height: 40),
              PinPut(
                  useNativeKeyboard: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  withCursor: true,
                  fieldsCount: 6,
                  fieldsAlignment: MainAxisAlignment.spaceAround,
                  textStyle:
                      const TextStyle(fontSize: 20.0, color: Colors.black),
                  eachFieldMargin: EdgeInsets.all(0),
                  eachFieldWidth: 45.0,
                  eachFieldHeight: 55.0,
                  onSubmit: (String pin) {},
                  focusNode: _pinPutFocusNode,
                  controller: _pinPutController,
                  submittedFieldDecoration: pinPutDecoration,
                  selectedFieldDecoration: pinPutDecoration.copyWith(
                      color: Colors.white,
                      border: Border.all(width: 1.5, color: Colors.green)),
                  followingFieldDecoration: pinPutDecoration,
                  pinAnimationType: PinAnimationType.scale),
              SizedBox(height: 20),
              InkWell(
                  onTap: () {},
                  child: Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          border: Border.all(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(child: Text('NEXT', style: buttonStyle)))),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text('titleResendOTP'.tr, style: resendOTPStyle),
                SizedBox(width: 10),
                Text('00:00', style: resendOTPTimerStyle),
              ])
            ])));
  }
}
