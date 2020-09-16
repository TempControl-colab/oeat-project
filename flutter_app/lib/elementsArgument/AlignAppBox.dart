import 'package:flutter/cupertino.dart';

class AlignAppBox{
  static final Alignment _alignmentStart = Alignment.bottomRight;

  static final Alignment _alignmentEnd = Alignment.topLeft;

  Alignment WhatAlignementStart(String what){
    switch(what){
      case 'up':
        return Alignment.topCenter;
        break;
      case 'left':
        return Alignment.topLeft;
        break;
      case 'right':
        return Alignment.topRight;
        break;
    }
  }

  Alignment WhatAlignementEnd(String what){
    switch(what){
      case 'down':
        return Alignment.bottomCenter;
        break;
      case 'left':
        return Alignment.bottomLeft;
        break;
      case 'right':
        return Alignment.bottomRight;
        break;
    }
  }
}