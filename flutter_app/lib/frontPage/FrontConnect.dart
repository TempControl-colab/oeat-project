import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/blockGestion/GestionSwitch.dart';
import 'package:flutterapp/elementsArgument/ElementsAppBox.dart';
import 'package:flutterapp/style/StyleApp.dart';

class FrontBuy {
  //ElementsAppBox _ELEMENTS = ElementsAppBox();

  Widget FrontC (BuildContext context, State state) {

    return Center(

      child: Stack(
        children: [
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height/1.5,
              width: MediaQuery.of(context).size.width/1.5,
              child: Opacity(
                opacity: 0.5,
                child: Card(
                  color: Color.fromRGBO(200, 100, 50, 1),
                ),
              ),
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
                      hintText: 'Email',
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/2,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Mot de passe',
                    ),
                  ),
                ),
                RaisedButton(
                  onPressed: null,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1)
                    ),
                    padding: const EdgeInsets.all(10.0),
                    child: const Text('Connexion', style: TextStyle(fontSize: 20),),
                  )
                ),
              ],
            ),
          ),
        ],
      ),

      /*child: Text(
        _ELEMENTS.TITLE
      ),*/
    );

  }

}