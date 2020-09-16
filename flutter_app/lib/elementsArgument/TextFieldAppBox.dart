import 'package:flutter/material.dart';

class TextFieldAppBox {

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
}