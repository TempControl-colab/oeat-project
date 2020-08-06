import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutterapp/blockGestion/GestionSwitch.dart';
import 'package:flutterapp/elementsArgument/ElementsAppBox.dart';
import 'package:flutterapp/style/StyleApp.dart';

class FrontConnect {
  ElementsAppBox _ELEMENTS = ElementsAppBox();

  Widget FrontC (BuildContext context, State state) {
    //return bottomScreen(context, state);
    return centerScreen(context, state);
  }

  Widget centerScreen(BuildContext context, State state) {
    return Center(

      child: Stack(
        children: [
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height/1,
              width: MediaQuery.of(context).size.width/1,
              child: Opacity(
                opacity: 1.0,
                child: Card(
                  color: Color.fromRGBO(255, 255, 255, 0.1),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              _ELEMENTS.CONNEXION.toUpperCase(),
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              textAlign: TextAlign.center,
              textScaleFactor: 2.0,
            ),
          ),
          Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: _ELEMENTS.MAILADRESS,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: _ELEMENTS.PASSWORD,
                      ),
                    ),
                  ),
                  Container(
                      child : RaisedButton(
                        color: Colors.transparent,
                          onPressed: () {},
                          child: Container(
                            width: MediaQuery.of(context).size.width/1,
                            child: Text(_ELEMENTS.OKBUTTON, style: TextStyle(fontSize: 20, color: Colors.white), textAlign: TextAlign.center,),
                          )
                      )
                  ),
                ],
              )
          ),
          Align(
            alignment: Alignment.bottomCenter,

            child: Container(
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround, //spaceBetween pour le rendu final
                    children: [
                      FlatButton(
                        color: Colors.transparent,
                        textColor: Colors.lightBlue,
                        disabledColor: Colors.grey,
                        disabledTextColor: Colors.black,
                        padding: EdgeInsets.all(0.0),
                        splashColor: Colors.blueAccent,
                        onPressed: () {},
                        child: Text(
                          _ELEMENTS.FORGOTPASSWORD,
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ),
                      FlatButton(
                        color: Colors.transparent,
                        textColor: Colors.lightBlue,
                        disabledColor: Colors.grey,
                        disabledTextColor: Colors.black,
                        padding: EdgeInsets.all(0.0),
                        splashColor: Colors.blueAccent,
                        onPressed: () {},
                        child: Text(
                          _ELEMENTS.REGISTER,
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}