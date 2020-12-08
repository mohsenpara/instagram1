part of 'all_bloc_bloc.dart';

abstract class AllBlocEvent extends Equatable {
  const AllBlocEvent();

  @override
  List<Object> get props => [];
}

class FirstPicClick extends AllBlocEvent {
  const FirstPicClick();
}

class GetFrameClick extends AllBlocEvent {
  const GetFrameClick();
}

class BackButtonClick extends AllBlocEvent {
  const BackButtonClick();
}
// enum AllBlocEvent {
//   FirstPicClick,
//   GetFrameClick,
//   BackButtonClick,
// }
