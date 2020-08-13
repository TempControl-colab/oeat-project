import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutterapp/blockGestion/GestionSwitch.dart';
import 'package:flutterapp/connecteur/ServiceUsers.dart';
import 'package:flutterapp/elementsArgument/ElementsAppBox.dart';
import 'package:flutterapp/style/StyleApp.dart';

class FrontConnect {
  ElementsAppBox _ELEMENTS = ElementsAppBox();

  TextEditingController emailController = new TextEditingController();
  TextEditingController passWordController = new TextEditingController();

  Widget FrontC (BuildContext context, State state) {
    return centerScreen(context, state);
  }

  Widget centerScreen(BuildContext context, State state) {
    return Center(

      child: Stack(
        children: [
          Center(
            child: _ELEMENTS.pageTitle(context, _ELEMENTS.CONNEXION, Colors.white, Colors.lightBlue, Colors.white),
          ),
          Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/1.5,
                    child: _ELEMENTS.classicTextField(_ELEMENTS.MAIL, Colors.white, TextInputType.emailAddress, null, emailController, false),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/1.5,
                    child: _ELEMENTS.classicTextField(_ELEMENTS.PASSWORD, Colors.white, TextInputType.visiblePassword, null, passWordController, true),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 0, top: 200, right: 0, bottom: 0),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.lightBlue.withOpacity(0.6),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: Offset(0, 0), // changes position of shadow
                          ),
                        ],
                      ),
                      child : RaisedButton(
                          textColor: Colors.blue,
                          color: Colors.black.withOpacity(0.4),
                          onPressed: () {},
                          shape: Border(
                            top: BorderSide(
                                color: Colors.white,
                                width: 2.5,
                                style: BorderStyle.solid
                            ),
                            bottom: BorderSide(
                                color: Colors.white,
                                width: 2.5,
                                style: BorderStyle.solid
                            ),
                          ),
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

  /*bool test() {
    UserService userService = new UserService();
    userService.getAllUsers();
    return true;
  }*/

}