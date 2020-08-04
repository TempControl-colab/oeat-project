import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/elementsArgument/ElementsAppBox.dart';

class FrontConnexion{

  ElementsAppBox _ELEMENTSAPPBOX = ElementsAppBox();

  Widget FrontC(BuildContext context, State state){
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
                  color: Colors.white,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}