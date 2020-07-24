import 'package:flutter/material.dart';
import 'package:flutterapp/blockGestion/GestionSwitch.dart';
import 'package:flutterapp/general/general_structure.dart';

import 'connecteur/ServiceUsers.dart';
import 'connecteur/Users.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  GeneralStructure _generalStructure=GeneralStructure();

  @override
  Widget build(BuildContext context) {
    return _generalStructure.myMaterialAppFonction(MyHomePage(this._generalStructure));
  }
}

class MyHomePage extends StatefulWidget {

  GeneralStructure _generalStructure;


  MyHomePage(this._generalStructure);

  @override
  _MyHomePageState createState() => _MyHomePageState(this._generalStructure);
}

class _MyHomePageState extends State<MyHomePage> {

  GeneralStructure _generalStructure;
  GestionSwitch _gestionSwitch = new GestionSwitch();

  UserService _service = UserService();

  User _user = User('testuser','testpass','testname','testemail','testprenom',33,'teststreet','testville',39);

  _MyHomePageState(this._generalStructure);

  @override
  Widget build(BuildContext context) {

    _service.addUser(_user.toMap());


    switch(_gestionSwitch.what){
      case switcherPage.home:
        return _generalStructure.myBodyBuild(context);
        break;
    }
  }

}
