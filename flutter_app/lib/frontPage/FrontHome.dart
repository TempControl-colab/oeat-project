import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FrontHome{


  Widget FrontH(BuildContext context, Color borderColor, double borderWidth, BorderStyle borderStyle){
    return Center(child: Container(
      child: RaisedButton(

        shape: Border(

          top: BorderSide(
                color: borderColor,
                width: borderWidth,
                style: borderStyle
            ),
          left: BorderSide(
                color: borderColor,
                width: borderWidth,
                style: borderStyle
            ),
          right: BorderSide(
                color: borderColor,
                width: borderWidth,
                style: borderStyle
            ),
          bottom: BorderSide(
                color: borderColor,
                width: borderWidth,
                style: borderStyle
            ),
        ),
      ),
    ));
  }
  

}