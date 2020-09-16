import 'package:flutter/material.dart';
import 'package:flutterapp/blockGestion/GestionSwitch.dart';
import 'package:flutterapp/elementsArgument/ColorAppBox.dart';
import 'package:flutterapp/elementsArgument/ElementsAppBox.dart';
import 'package:flutterapp/elementsArgument/StringAppBox.dart';

class StyleFullOfApp{

  ElementsAppBox _ELEMENTSARG = new ElementsAppBox();
  ColorAppBox _COLORAPPBOX = new ColorAppBox();
  StringAppBox _STRINGAPPBOX = new StringAppBox();

  GestionSwitch _GESTIONSWITCH = new GestionSwitch();


  ThemeData themeDataValue(){
    return ThemeData(
      primaryColor: _COLORAPPBOX.clgr,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );

  }

  AppBar myAppBar(BuildContext context){

   return AppBar(
      title: new Text('Stage',
        textAlign: TextAlign.center,
        textScaleFactor: 2.0,
        style: new TextStyle(
            color: Colors.black,
            fontSize: 10.0,
            fontStyle: FontStyle.italic
        ),
      ),
      actions: [
        SizedBox(
          child: IconButton(
              icon: Image.asset('Image/baniére.png'),
            ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        )
      ],
      elevation: 10,//
    );

  }


  Drawer myDrawer(BuildContext context){

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text(_STRINGAPPBOX.HOME),
            onTap: () {
              _GESTIONSWITCH.changer(switcherPage.home);
            },
          ),
          ListTile(
            title: Text(_STRINGAPPBOX.CONNEXION),
            onTap: () {
              _GESTIONSWITCH.changer(switcherPage.connexion);
            },
          ),
          ListTile(
            title: Text(_STRINGAPPBOX.REGISTER),
            onTap: () {
              _GESTIONSWITCH.changer(switcherPage.inscription);
            },
          ),
        ],
      ),
    );

  }
}

