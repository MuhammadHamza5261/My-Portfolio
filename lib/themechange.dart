import 'dart:async';

import 'package:flutter/material.dart';

 class ThemeChanger{

  final StreamController _theme = StreamController();

  StreamSink get themeSink => _theme.sink;
  Stream get themeStream => _theme.stream;







  final StreamController<ChangeTheme> _event = StreamController<ChangeTheme>();

  StreamSink<ChangeTheme> get eventSink  => _event.sink;
  Stream<ChangeTheme>get eventStream  => _event.stream;



  ThemeChanger(){
    eventStream.listen((ChangeTheme event) {
      switch(event){




        case ChangeTheme.purple:
          themeSink.add(Colors.purple);
          break;



        case ChangeTheme.red:
          themeSink.add(Colors.red);
          break;



        case ChangeTheme.teal:
          themeSink.add(Colors.teal);
          break;






        case ChangeTheme.green:
          themeSink.add(Colors.green);
          break;





      }

    });
  }
}



enum ChangeTheme{
   purple,red,teal,green;

}