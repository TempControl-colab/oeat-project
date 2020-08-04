import 'dart:async';

abstract class AbstractBlocDrawer{
  dispose();
}


enum switcherDrawer{
  home,
  inscription,
  home_connect,
  buy,
}

class DrawerSwitchCase extends AbstractBlocDrawer{

  switcherDrawer enuDrawer=switcherDrawer.home;

  OptionBloc(){
    sink.add(enuDrawer);
  }


  final _controller = StreamController<switcherDrawer>();

  Sink<switcherDrawer> get sink =>_controller.sink;

  Stream<switcherDrawer> get stream => _controller.stream;

  changer(switcherDrawer e){
    enuDrawer = e;
    sink.add(enuDrawer);
  }

  switcherDrawer get what => enuDrawer;
  @override
  dispose() => _controller.close();

}