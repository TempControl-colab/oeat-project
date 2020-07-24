import 'package:flutter/cupertino.dart';
import 'package:flutterapp/elementsArgument/ElementsAppBox.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/style/StyleApp.dart';

class FrontInscription {
  ElementsAppBox _elementsAppBox = ElementsAppBox();
  StyleFullOfApp _styleFullOfApp = StyleFullOfApp();

  Widget FrontI(BuildContext context) {
    double valueheight = MediaQuery.of(context).size.height;
    double valuewidth = MediaQuery.of(context).size.width;
    return Center(
      child:Container(
        height: valueheight,
        width: valuewidth,
        color: _elementsAppBox.DEBUGSHOW==true ? Colors.blue:null,
        child: Stack(
          children: [
            Center(
              child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    margin: EdgeInsets.only(
                      top: valueheight/25,
                      left:  valuewidth/20,
                      right:  valuewidth/20,
                      bottom: valueheight/25,
                    ),

                    height: valueheight,
                    width: valuewidth,
                    color: _elementsAppBox.DEBUGSHOW==true ? Colors.green:null,
                    child: Card(
                      elevation: 10,
                      color: _elementsAppBox.DEBUGSHOW==true ? Colors.red:Colors.white24,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    )
                  ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(
                  top: valueheight/1000,
                  left:  valuewidth/10,
                  right:  valuewidth/10,
                  bottom: valueheight/1.65,
                ),
                width: valuewidth/1.3,
                height: valueheight/20,
                color: _elementsAppBox.DEBUGSHOW==true ? Colors.yellow:null,
                child: Center(
                    child:Row(
                    children: [
                      Icon(
                        Icons.ac_unit
                      ),
                     Container(

                       width: valuewidth/1.5,
                       height: valueheight/22,
                       color: _elementsAppBox.DEBUGSHOW==true ? Colors.pink:null,
                   child:Align(
                     child: Center(
                       child: TextField(
                         textAlignVertical: TextAlignVertical.center,
                         style: _styleFullOfApp.style(context),
                         textAlign: TextAlign.start,
                         decoration: InputDecoration(
                           hintText: 'Test',
                         ),
                       ),
                     ),
                   )
                     )
                  ],
                )
                )
              ),
            ),
          ],
        ),
      ) ,
    );
  }
}
