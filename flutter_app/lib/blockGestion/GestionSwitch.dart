import 'dart:async';
import 'package:flutter/material.dart';

abstract class AbstractBloc{
  dispose();
}

enum switcherPage{
  home,
  inscription,
  connexion,
}

class GestionSwitch extends AbstractBloc{

  switcherPage enu=switcherPage.inscription;

  OptionBloc(){
    sink.add(enu);
  }

  final _controller = StreamController<switcherPage>();

  Sink<switcherPage> get sink =>_controller.sink;
  Stream<switcherPage> get stream => _controller.stream;

  changer(switcherPage e){
    enu = e;
    sink.add(enu);
  }

  switcherPage get what => enu;
  @override
  dispose() => _controller.close();
}