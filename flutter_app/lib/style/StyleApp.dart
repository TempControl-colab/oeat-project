import 'package:flutter/material.dart';
import 'package:flutterapp/elementsArgument/ElementsAppBox.dart';

class StyleFullOfApp{

  ElementsAppBox _ELEMENTSARG = new ElementsAppBox();

  ThemeData themeDataValue(){
    return ThemeData(
      primaryColor: _ELEMENTSARG.clgr,
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
            title: Text('Item 1'),
            onTap: () {
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
            },
          ),
        ],
      ),
    );

  }
  TextStyle style1(BuildContext context){
    return TextStyle(
      color: Colors.blue,
      fontSize: MediaQuery.of(context).size.height/30,
      fontFamily: 'Raleway',
    );
  }
  TextStyle style(BuildContext context){
    return TextStyle(
      color: Colors.black,
      fontSize: MediaQuery.of(context).size.height/30,
      fontFamily: 'Raleway',
    );
  }

  TextStyle style2(BuildContext context){
    return TextStyle(
      color: Colors.black,
      fontSize: MediaQuery.of(context).size.width/40,
      fontStyle: FontStyle.italic,
    );
  }
}

