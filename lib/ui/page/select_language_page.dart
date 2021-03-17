import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salarybox/controller/controller.dart';
import 'package:salarybox/resource/routes.dart';
import 'package:salarybox/resource/style.dart';

class SelectLanguagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          title: Text('Select Language', style: appBarTitleStyle),
        ),
        bottomNavigationBar: InkWell(
            onTap: () => Get.toNamed(loginRoute),
            child: Container(
                height: 50.0,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(0.0)),
                child: Center(child: Text('NEXT', style: buttonStyle)))),
        body: Obx(() => Container(
            padding: EdgeInsets.all(5.0), child: languageGridView())));
  }

  languageGridView() => GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10, mainAxisSpacing: 10, crossAxisCount: 2),
      itemCount: SelectLanguageController.to.selectLanguageList.length,
      itemBuilder: (context, index) {
        var _selectLanguage =
            SelectLanguageController.to.selectLanguageList[index];
        return GestureDetector(
            onTap: () {},
            child: Stack(children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                      color: _selectLanguage.color.withOpacity(0.2),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  width: Get.width,
                  padding: EdgeInsets.all(30),
                  margin: EdgeInsets.all(3),
                  child: Text(_selectLanguage.name,
                      textAlign: TextAlign.center, style: languageNameStyle)),
              if (_selectLanguage.isSelect)
                PositionedDirectional(
                    end: 0,
                    top: -0,
                    child: Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child:
                            Icon(Icons.check, color: Colors.green, size: 18)))
            ]));
      });
}
