import 'package:watch_it/features/home/data/models/articals_model.dart';

abstract class HomeState {}

class InitialState extends HomeState {}

class SuccessState extends HomeState {
  final ArticalesModel articalesModel;

  SuccessState({required this.articalesModel});
}

class ErrorState extends HomeState {
  final String error;

  ErrorState({required this.error});
}

class LoadingState extends HomeState {}
