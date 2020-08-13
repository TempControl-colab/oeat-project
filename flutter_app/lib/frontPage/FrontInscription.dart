import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/connecteur/UserService.dart';
import 'package:flutterapp/connecteur/Users.dart';
import 'package:flutterapp/elementsArgument/ElementsAppBox.dart';
import 'package:email_validator/email_validator.dart';

class FrontInscription extends StatefulWidget {
  FrontInscription({Key key}) : super(key: key);

  @override
  _FrontInscription createState() => _FrontInscription();
}

class _FrontInscription extends State<FrontInscription>{

  ElementsAppBox _ELEMENTS = ElementsAppBox();
  bool _checkValue = false;
  bool _checkValue2 = false;
  bool _checkValue3 = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController nameController = new TextEditingController();
  TextEditingController mailController = new TextEditingController();
  TextEditingController passwordController1 = new TextEditingController();
  TextEditingController passwordController2 = new TextEditingController();
  TextEditingController adressController = new TextEditingController();
  TextEditingController floorController = new TextEditingController();
  TextEditingController codeController = new TextEditingController();
  TextEditingController zipController = new TextEditingController();
  TextEditingController cityController = new TextEditingController();
  TextEditingController doorController = new TextEditingController();
  UserService _service = UserService();

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
                        child: _ELEMENTS.classicTextField(_ELEMENTS.NAME, Colors.white, TextInputType.text, Icon(Icons.person_outline, color: Colors.white,), nameController)
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/1.2,
                      child: _ELEMENTS.classicTextField(_ELEMENTS.MAIL, Colors.white, TextInputType.emailAddress, Icon(Icons.mail_outline, color: Colors.white), mailController),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/1.2,
                      child: _ELEMENTS.classicTextField(_ELEMENTS.PASSWORD, Colors.white, TextInputType.visiblePassword, Icon(Icons.lock_outline, color: Colors.white), passwordController1),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/1.2,
                      child: _ELEMENTS.classicTextField(_ELEMENTS.CPASSWORD, Colors.white, TextInputType.visiblePassword, Icon(Icons.lock_outline, color: Colors.white), passwordController2),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/1.2,
                      child: _ELEMENTS.classicTextField(_ELEMENTS.ADDRESS, Colors.white, TextInputType.text, null, adressController),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width/5,
                          child: _ELEMENTS.classicTextField(_ELEMENTS.FLOOR, Colors.white, TextInputType.number, null, floorController),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width/4,
                          child: _ELEMENTS.classicTextField(_ELEMENTS.CODE, Colors.white, TextInputType.text, null, codeController),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width/2.9,
                          child: _ELEMENTS.classicTextField(_ELEMENTS.ZIP, Colors.white, TextInputType.number, null, zipController),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width/2.5,
                          child: _ELEMENTS.classicTextField(_ELEMENTS.CITY, Colors.white, TextInputType.text, null, cityController),
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/1.2,
                      child: _ELEMENTS.classicTextField(_ELEMENTS.DOOR, Colors.white, TextInputType.text, null, doorController),
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
                    Container(
                      child: Theme(
                        data: ThemeData(unselectedWidgetColor: Colors.white),
                        child: CheckboxListTile(
                          title: Text(_ELEMENTS.PERMISSIONS,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          value: _checkValue3,
                          onChanged: (bool value){
                            setState(() {
                              _checkValue3 = value;
                            });
                          },
                          activeColor: Colors.lightBlueAccent,
                          checkColor: Colors.white,
                        ),
                      ),
                    ),







                    SizedBox(
                      height: 10.0,
                    ),
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
                            onPressed: () {
                              print('tentative d''inscription');
                              print("Verif Email valide:");
                              if (!(mailController.text.length < 1 || nameController.text.length < 1
                                  || passwordController1.text.length < 1 || passwordController2.text.length < 1)) {
                                print(EmailValidator.validate(
                                    mailController.text));
                                if (EmailValidator.validate(
                                    mailController.text) == true) {
                                  /*print("Verif Email déjà utilisé:");
                                print(_service.getUser(mailController.text, 'email'));
                                if (_service.getUser(mailController.text, 'email') == null) {*/
                                  print("Verif Mots de passes identiques:");
                                  print(passwordController2.text ==
                                      passwordController1.text);
                                  if (passwordController2.text ==
                                      passwordController1.text) {
                                    if (codeController.text.length == 0) {
                                      codeController.text = '0';
                                    }
                                    if (zipController.text.length == 0) {
                                      zipController.text = '0';
                                    }
                                    if (floorController.text.length == 0) {
                                      floorController.text = '0';
                                    }
                                    if (doorController.text.length == 0) {
                                      doorController.text = '0';
                                    }
                                    User _user = User(
                                        mailController.text,
                                        nameController.text,
                                        passwordController2.text,
                                        adressController.text,
                                        int.parse(floorController.text),
                                        int.parse(codeController.text),
                                        int.parse(zipController.text),
                                        cityController.text,
                                        int.parse(doorController.text),
                                        true,
                                        false);
                                    _service.addUser(_user.toMap());
                                  } else {
                                    print('Mot de passe non identique');
                                  }
                                  /*}
                                else {
                                  print('Mail déjà utilisé');
                                }*/
                                } else {
                                  print('Adresse mail foireuse');
                                }
                              } else {
                                print('Champs obligatoires non remplis');
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



  Future<void> _validateInputs(){
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}