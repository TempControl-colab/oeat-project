import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/elementsArgument/ElementsAppBox.dart';

class FrontInscription extends StatefulWidget {
  FrontInscription({Key key}) : super(key: key);

  @override
  _FrontInscription createState() => _FrontInscription();
}

class _FrontInscription extends State<FrontInscription>{

  ElementsAppBox _ELEMENTS = ElementsAppBox();
  String _nom;
  bool _checkValue = false;
  bool _checkValue2 = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          autovalidate: _ELEMENTS.AUTOVALIDATE,
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Container(
                      width: MediaQuery.of(context).size.width/1.2,
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        onChanged: (String s) {
                          _nom = s;
                        },
                        onSubmitted: (String s) {
                          _nom = s;
                        },
                        decoration: InputDecoration(
                          hintText: 'Nom',
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white
                            ),
                          ),
                          prefixIcon: Icon(Icons.person_outline,
                            color: Colors.white),
                        ),
                        keyboardType: TextInputType.name,

                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/1.2,
                      child: _ELEMENTS.classicTextField(_ELEMENTS.MAIL, Colors.white, TextInputType.emailAddress, Icon(Icons.mail_outline, color: Colors.white)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/1.2,
                      child: _ELEMENTS.classicTextField(_ELEMENTS.PASSWORD, Colors.white, TextInputType.visiblePassword, Icon(Icons.lock_outline, color: Colors.white)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/1.2,
                      child: _ELEMENTS.classicTextField(_ELEMENTS.CPASSWORD, Colors.white, TextInputType.visiblePassword, Icon(Icons.lock_outline, color: Colors.white)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/1.2,
                      child: _ELEMENTS.classicTextField(_ELEMENTS.ADDRESS, Colors.white, TextInputType.text, Icon(Icons.location_on_outlined, color: Colors.white)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width/5,
                          child: _ELEMENTS.classicTextField(_ELEMENTS.FLOOR, Colors.white, TextInputType.number, null),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width/4,
                          child: _ELEMENTS.classicTextField(_ELEMENTS.CODE, Colors.white, TextInputType.text, null),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width/2.9,
                          child: _ELEMENTS.classicTextField(_ELEMENTS.ZIP, Colors.white, TextInputType.number, null),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width/2.5,
                          child: _ELEMENTS.classicTextField(_ELEMENTS.CITY, Colors.white, TextInputType.name, null),
                        ),
                      ],
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width/1.2,
                        child: _ELEMENTS.classicTextField(_ELEMENTS.DOOR, Colors.white, TextInputType.text, null)
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width/2,
                          child: Expanded(
                            child: SwitchListTile(
                              title: Text(_ELEMENTS.ELEVATOR,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              value: _checkValue,
                              onChanged: (bool value) {
                                setState(() {
                                  _checkValue = value;
                                });
                              },
                              activeColor: Colors.lightBlueAccent,
                              inactiveThumbColor: Colors.grey,
                              inactiveTrackColor: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width/2,
                          child: Expanded(
                            child: SwitchListTile(
                              title: Text(_ELEMENTS.ANIMAL,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              value: _checkValue2,
                              onChanged: (bool value) {
                                setState(() {
                                  _checkValue2 = value;
                                });
                              },
                              activeColor: Colors.lightBlueAccent,
                              inactiveThumbColor: Colors.grey,
                              inactiveTrackColor: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    /*Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.red,
                              blurRadius: 7.0,
                              spreadRadius: 3.0,
                            ),
                          ]
                      ),
                      child: RaisedButton(
                        onPressed: _validateInputs,
                          child: Text(_ELEMENTS.VALIDATE),
                      ),
                    ),*/
                    Container(
                        margin: EdgeInsets.only(left: 0, top: 10, right: 0, bottom: 0),
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
                              child: Text(_ELEMENTS.REGISTER.toUpperCase(), style: TextStyle(fontSize: 20, color: Colors.white), textAlign: TextAlign.center,),
                            )
                        )
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }



  void _validateInputs(){

  }
}