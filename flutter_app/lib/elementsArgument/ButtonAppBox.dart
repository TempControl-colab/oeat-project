import 'dart:ui';

import 'package:flutter/material.dart';

class ButtonAppBox {

  Widget colorFlatButton(String text, Color backColor, Color textColor, Color disaColor, Color disaTextColor, Color splashColor, double fontSize, Function() function) {
    return (
        FlatButton(
          color: backColor,
          textColor: textColor,
          disabledColor: disaColor,
          disabledTextColor: disaTextColor,
          padding: EdgeInsets.all(0.0),
          splashColor: splashColor,
          onPressed: () {
            function;
          },
          child: Text(
            text,
            style: TextStyle(fontSize: fontSize),
          ),
        )
    );
  }
}