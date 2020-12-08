import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:instagram1/pages/First.dart';
part 'all_bloc_event.dart';
part 'all_bloc_state.dart';

class AllBlocBloc extends Bloc<AllBlocEvent, AllBlocState> {
  AllBlocBloc() : super(AllBlocInitial());
  @override
  Stream<AllBlocState> mapEventToState(
    AllBlocEvent event,
  ) async* {
    // switch (event) {
    //   case AllBlocEvent.FirstPicClick:
    //     yield FirstPicShow();
    //     break;
    //   case AllBlocEvent.GetFrameClick:
    //     yield GetFrameShow();
    //     break;
    //   default:
    if (event is BackButtonClick){
      yield AllBlocInitial();
    }
    if (event is FirstPicClick) {
      yield FirstPicShow();
    } else {
      if (event is GetFrameClick) {
      yield GetFrameShow();
    }
    }
  }
}
