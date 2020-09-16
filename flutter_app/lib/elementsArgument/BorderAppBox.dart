import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BorderAppBox {

  Widget roundedBorder(BuildContext context, Color borderColor, double radius, Widget widget){
    return Center(child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        color: borderColor,
        border: Border.all(),
      ),
      child: widget,
    ));
  }

}