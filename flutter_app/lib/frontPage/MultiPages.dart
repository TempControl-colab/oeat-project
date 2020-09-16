import 'package:flutter/material.dart';

class MultiPages extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Multi Page Application"),
        ),
        body: new Checkbox(
            value: false,
            onChanged: (bool newValue) {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (ctxt) => buildOtherPage(ctxt)),
              );
            }
        )
    );
  }

  @override
  Widget buildOtherPage (BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Multi Page Application Page-1"),
      ),
      body: new Checkbox(
          value: false,
          onChanged: (bool newValue) {
            Navigator.pop(context); // Pop from stack
          }
      )
    );
  }
}