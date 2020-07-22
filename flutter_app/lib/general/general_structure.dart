import 'package:flutter/material.dart';


class GeneralStructure{

  MaterialApp myMaterialAppFonction(String title,StatefulWidget home){

    return MaterialApp(
      title: 'Flutter Demo',


      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),


      debugShowCheckedModeBanner: false,



      home: home,
    );
  }



}