import 'package:flutter/material.dart';
import 'package:flutterapp/general/general_structure.dart';

void main() {
  runApp(MyApp());
}








class MyApp extends StatelessWidget {

  GeneralStructure _generalStructure;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return _generalStructure.myMaterialAppFonction('titre',MyHomePage());
  }
}







class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}








class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold();

  }
}
