import 'package:flutter/material.dart';
import 'package:salarybox/resource/font.dart';
import 'package:salarybox/resource/validation.dart';
import 'package:url_launcher/url_launcher.dart';

extension DynamicUtil on dynamic {}

extension ContextExtensions on BuildContext {
  double widthInPercent(double percent) {
    var toDouble = percent / 100;
    return MediaQuery.of(this).size.width * toDouble;
  }

  double heightInPercent(double percent) {
    var toDouble = percent / 100;
    return MediaQuery.of(this).size.height * toDouble;
  }

  showProgress() {
    showDialog(
        context: this,
        barrierDismissible: false,
        builder: (context) => Container(
            alignment: FractionalOffset.center,
            child: CircularProgressIndicator(strokeWidth: 1)));
  }

  void hideProgress() {
    Navigator.pop(this);
  }
}

extension ValiationExtensions on String {
  mobileCalling() => launch('tel:' + this);

  validateEmail() {
    var regExp = RegExp(emailPattern);
    if (this.isEmpty) {
      return 'Email is required';
    } else if (!regExp.hasMatch(this)) {
      return 'Invalid email';
    } else {
      return null;
    }
  }

  validatePassword() {
    if (this.isEmpty) {
      return 'Password is required';
    } else if (this.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  validateMobile() {
    var regExp = RegExp(mobilePattern);
    if (this.replaceAll(" ", "").isEmpty) {
      return 'Mobile is required';
    } else if (this.replaceAll(" ", "").length != 10) {
      return 'Mobile number must 10 digits';
    } else if (!regExp.hasMatch(this.replaceAll(" ", ""))) {
      return 'Mobile number must be digits';
    }
    return null;
  }

  String validUserName() {
    var regExp = RegExp(userNamePattern);
    if (this.isEmpty) {
      return 'Name is required';
    } else if (!regExp.hasMatch(this)) {
      return 'Name must be a-z and A-Z';
    }
    return null;
  }

  String validateAddress() {
    var regExp = RegExp(addressPattern);
    if (this.isEmpty) {
      return 'Address is required';
    } else if (!regExp.hasMatch(this)) {
      return 'Address must be text and numeric';
    }
    return null;
  }

  String validateMessage() {
    if (this.isEmpty) {
      return 'Message is required';
    } else if (this.length < 20) {
      return 'Message must be 6 characters';
    }
    return null;
  }

  String validatePinCode() {
    if (this.isEmpty) {
      return 'Pin code is required';
    } else if (this.length < 6) {
      return 'Pin code must be 6 characters';
    }
    return null;
  }

  String validateCurrentPassword() {
    if (this.isEmpty) {
      return 'Current password required';
    } else if (this.length < 6) {
      return 'Current password must be at least 6 characters';
    }
    return null;
  }

  String validateNewPassword() {
    if (this.isEmpty) {
      return 'New password required';
    } else if (this.length < 6) {
      return 'New password must be at least 6 characters';
    }
    return null;
  }

  bool validationEqual(String currentValue, String checkValue) {
    if (currentValue == checkValue) {
      return true;
    } else {
      return false;
    }
  }
}

extension WidgetExtensions on Widget {
  circleProgressIndicator() => Container(
      alignment: FractionalOffset.center,
      child: CircularProgressIndicator(strokeWidth: 1));

  inputField(TextEditingController textEditingController,
          {ValueChanged<String> onChanged,
          int maxLength,
          TextInputType keyboardType,
          String hintText,
          String labelText,
          int maxLines = 1,
          bool obscureText = false,
          InkWell inkWell,
          FormFieldValidator<String> validation}) =>
      TextFormField(
          controller: textEditingController,
          //cursorColor: appBarTitleColor,
          obscureText: obscureText,
          keyboardType: keyboardType,
          maxLength: maxLength,
          style: TextStyle(fontFamily: mediumFont),
          maxLines: maxLines,
          onChanged: onChanged,
          decoration: InputDecoration(
              border: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorStyle: TextStyle(fontFamily: mediumFont, color: Colors.red),
              labelStyle:
                  TextStyle(fontFamily: mediumFont, color: Colors.black),
              suffixStyle:
                  TextStyle(fontFamily: mediumFont, color: Colors.black),
              prefixStyle:
                  TextStyle(fontFamily: mediumFont, color: Colors.black),
              counterStyle:
                  TextStyle(fontFamily: mediumFont, color: Colors.black),
              helperStyle:
                  TextStyle(fontFamily: mediumFont, color: Colors.black),
              hintText: labelText,
              counterText: '',
              //labelText: labelText,
              suffix: inkWell),
          validator: validation);

  size({double widthScale = 0.0, double heightScale = 0.0}) =>
      SizedBox(width: widthScale, height: heightScale);

  socialIcon({Icon icon, backgroundColor: Colors, VoidCallback voidCallback}) =>
      Container(
          width: 40.0,
          height: 40.0,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: backgroundColor),
          child: RawMaterialButton(
              shape: CircleBorder(), onPressed: voidCallback, child: icon));
}
