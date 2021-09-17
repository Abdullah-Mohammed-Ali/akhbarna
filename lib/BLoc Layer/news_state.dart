part of 'news_cubit.dart';

@immutable
abstract class NewsState {}

class NewsInitial extends NewsState {}

class NewsLoading extends NewsState {}

class NewsError extends NewsState {
  final String error;

  NewsError(this.error);
}

class NewsLoadedSuccess extends NewsState {}
