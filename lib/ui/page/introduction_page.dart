import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:salarybox/controller/controller.dart';
import 'package:salarybox/resource/images.dart';
import 'package:salarybox/resource/routes.dart';
import 'package:salarybox/resource/style.dart';
import 'package:salarybox/resource/value.dart';
import 'package:salarybox/utils/extensions.dart';

class IntroductionPage extends StatefulWidget {
  @override
  createState() => _IntroductionState();
}

class _IntroductionState extends State<IntroductionPage> {
  @override
  build(BuildContext context) => Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
          height: 130,
          child: Column(children: [
            Image.asset(safeAndSecureImage, scale: 3),
            SizedBox(height: 10),
            InkWell(
                onTap: () => Get.toNamed(selectLanguageRoute),
                child: Container(
                    height: 50.0,
                    decoration: BoxDecoration(color: Colors.green),
                    child: Center(
                        child:
                            Text('buttonIntroduction'.tr, style: buttonStyle))))
          ])),
      body: ListView(children: [
        Container(
            padding: EdgeInsets.all(15),
            child: Column(children: [
              Image.asset(salaryBoxImage, scale: 6),
              SizedBox(height: 100),
              Text('titleIntroduction'.tr,
                  textAlign: TextAlign.center, style: titleLoginStyle),
              SizedBox(height: 20),
              Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Text('Flexible & Trustworthy',
                        textAlign: TextAlign.center,
                        style: subTitleIntroductionStyle),
                    SizedBox(height: 5),
                    Text('1 Lack + Happy Customers',
                        textAlign: TextAlign.center,
                        style: subTitleIntroductionStyle),
                    SizedBox(height: 5),
                    Text('Made in India',
                        textAlign: TextAlign.center,
                        style: subTitleIntroductionStyle),
                  ]))
            ]))
      ]));
}
