import 'dart:ui';

import 'package:flutter/material.dart';

class ButtonAppBox {
  Widget classicTextField(String text, Color color, TextInputType type, Icon icon, TextEditingController textEditingController, bool obscureText) {
    return (
        TextFormField(
          style: TextStyle(
            color: color,
          ),
          controller: textEditingController,
          decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(
              color: color,
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: color,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: color,
              ),
            ),
            prefixIcon: icon,
          ),
          keyboardType: type,
          obscureText: obscureText,
        )
    );
  }

  Widget blueFlatButton(String text) {
    return (
        FlatButton(
          color: Colors.transparent,
          textColor: Colors.lightBlue,
          disabledColor: Colors.grey,
          disabledTextColor: Colors.black,
          padding: EdgeInsets.all(0.0),
          splashColor: Colors.blueAccent,
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(fontSize: 12.0),
          ),
        )
    );
  }
}