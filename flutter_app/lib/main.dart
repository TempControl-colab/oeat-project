import 'package:flutter/material.dart';
import 'package:flutterapp/general/general_structure.dart';

void main() => MyApp();


class MyApp extends StatelessWidget {

  GeneralStructure _generalStructure;
  // This widget is the root of your application.
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
  _MyHomePageState(this._generalStructure);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('test'),),
    );

  }
}
