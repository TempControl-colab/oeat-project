import 'package:flutter/material.dart';
import 'package:flutterapp/blockGestion/DrawerSwitchCase.dart';
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


  Drawer myDrawer(BuildContext context, DrawerSwitchCase drawerSwitchCase){

    switch (drawerSwitchCase.enuDrawer) {
      case switcherDrawer.home :
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
                onTap: () {},
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {},
              ),
            ],
          ),
        );
        break;
    }

  }
}

