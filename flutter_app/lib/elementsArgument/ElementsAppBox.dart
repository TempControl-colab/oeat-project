import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutterapp/elementsArgument/StringAppBox.dart';


class ElementsAppBox {

  StringAppBox _stringAppBox = StringAppBox();

  String validateName(String value) {
    if (value.length == 0)
      return _stringAppBox.VALIDNAME;
    else
      return null;
  }

  String validateMobile(String value) {
    if (value.length != 10)
      return _stringAppBox.VALIDPHONE;
    else
      return null;
  }

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return _stringAppBox.VALIDMAIL;
    else
      return null;
  }

  ///Widget

  Widget pageTitle(BuildContext context, String text, Color textColor, Color shadowColor, Color lineColor) {
    return (
        Container(
          width: MediaQuery
              .of(context)
              .size
              .width / 1,
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 1,
                    child: Text(
                      text.toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
                      textAlign: TextAlign.center,
                      textScaleFactor: 2.0,
                    ),
                  )
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: shadowColor.withOpacity(0.6),
                      spreadRadius: 5,
                      blurRadius: 7,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.0),
                  child: Container(height: 2.5,
                    color: lineColor,
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }

  Future<void> popupWindowContent(BuildContext context, String title, String text, Widget widget, String button1, String button2, Function() function1, Function function2){
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(text),
                widget,
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text(button1),
              onPressed: () {
                function1;
              },
            ),
            FlatButton(
              child: Text(button2),
              onPressed: () {
                function2;
              },
            ),
          ],
        );
      },
    );
  }

  Widget Carousel(var list, double height, double ratio, double viewportFraction, int initPage, bool infiniteScroll, bool reverse,
      bool autoplay, int intervalSecond, int animDurSecond, Curve curve, bool enlargeCenterPage, Function function, Axis scrollDirection){
    return CarouselSlider(
        items: list, // need to create a list variable (exemple -> var list = [];)
        options: CarouselOptions(
          height: height,
          aspectRatio: ratio, // exemple -> 16/9
          viewportFraction: viewportFraction,
          initialPage: initPage,
          enableInfiniteScroll: infiniteScroll,
          reverse: reverse,
          autoPlay: autoplay,
          autoPlayInterval: Duration(seconds: intervalSecond),
          autoPlayAnimationDuration: Duration(milliseconds: animDurSecond),
          autoPlayCurve: curve, // exemple -> Curves.fastOutSlowIn
          enlargeCenterPage: enlargeCenterPage,
          onPageChanged: function,
          scrollDirection: scrollDirection, // exemple -> Axis.Horizontale
        )
    );
  }
}