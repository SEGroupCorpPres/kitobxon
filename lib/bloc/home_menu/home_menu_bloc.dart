import 'package:bloc/bloc.dart';
import 'package:kitobxon/sections/parent/body.dart';

import 'home_menu_event.dart';
import 'home_menu_state.dart';

enum HomeMenuSection{
  TeacherHomePageEvent,
  BibliotikerHomePageEvent,
  ParentHomePageEvent,
  ChildrenPageEvent,
  PaymentPageEvent,
  AboutPageEvent,
  HelpPageEvent,
}

class HomeMenuBloc extends Bloc<HomeMenuEvent, HomeMenuState> {
  HomeMenuBloc() : super(HomeMenuState().init());

  @override
  Stream<HomeMenuState> mapEventToState(HomeMenuEvent event) async* {
    switch(event){

    }
  }
}

abstract class NavigationStates {}
