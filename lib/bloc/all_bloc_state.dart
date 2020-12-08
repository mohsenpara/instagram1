part of 'all_bloc_bloc.dart';

abstract class AllBlocState extends Equatable {
  const AllBlocState();

  @override
  List<Object> get props => [];
}

class AllBlocInitial extends AllBlocState {
  const AllBlocInitial();
}

class FirstPicShow extends AllBlocState {
  const FirstPicShow();
}

class GetFrameShow extends AllBlocState {}
