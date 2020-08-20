import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutterapp/blockGestion/GestionSwitch.dart';
import 'package:flutterapp/connecteur/UserService.dart';
import 'package:flutterapp/elementsArgument/ButtonAppBox.dart';
import 'package:flutterapp/elementsArgument/ElementsAppBox.dart';
import 'package:flutterapp/elementsArgument/StringAppBox.dart';
import 'package:flutterapp/elementsArgument/TextFieldAppBox.dart';
import 'package:flutterapp/style/StyleApp.dart';

class FrontConnect {
  TextFieldAppBox _TEXTFIELDS = TextFieldAppBox();
  StringAppBox _STRINGS = StringAppBox();
  ElementsAppBox _ELEMENTS = ElementsAppBox();
  ButtonAppBox _BUTTONS = ButtonAppBox();

  TextEditingController emailController = new TextEditingController();
  TextEditingController passWordController = new TextEditingController();
  UserService userService = new UserService();


  Widget FrontC (BuildContext context, State state) {
    return centerScreen(context, state);
  }

  Widget centerScreen(BuildContext context, State state) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.topCenter,
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _ELEMENTS.pageTitle(context, _STRINGS.CONNEXION, Colors.white, Colors.lightBlue, Colors.white),
                Container(
                  margin: EdgeInsets.only(left: 0, top: 175, right: 0, bottom: 0),
                  width: MediaQuery.of(context).size.width/1.5,
                  child: _TEXTFIELDS.classicTextField(_STRINGS.MAIL, Colors.white, TextInputType.emailAddress, null, emailController, false),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/1.5,
                  child: _TEXTFIELDS.classicTextField(_STRINGS.PASSWORD, Colors.white, TextInputType.text, null, passWordController, true),
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
                      onPressed: () {
                        if(userService.getTestUser(emailController.text, passWordController.text) != null) {
                          print('YES');
                        } else {
                          print('NO');
                        }
                      },
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
                        child: Text(_STRINGS.OKBUTTON, style: TextStyle(fontSize: 20, color: Colors.white), textAlign: TextAlign.center,),
                      ),
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
                            _BUTTONS.blueFlatButton(_STRINGS.FORGOTPASSWORD),
                            _BUTTONS.blueFlatButton(_STRINGS.REGISTER),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}