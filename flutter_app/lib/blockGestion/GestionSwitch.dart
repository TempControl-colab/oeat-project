import 'dart:async';

abstract class AbstractBloc{
  dispose();
}


enum switcherPage{
  home,
  inscription,
  home_connect,
  connexion,
  multipages
}

class GestionSwitch extends AbstractBloc{

  switcherPage enu=switcherPage.multipages;

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