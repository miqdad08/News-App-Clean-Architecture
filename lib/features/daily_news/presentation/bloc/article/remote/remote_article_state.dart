part of 'remote_article_bloc.dart';

@immutable
abstract class RemoteArticleState extends Equatable {
  const RemoteArticleState();

  @override
  List<Object> get props => [];
}

class RemoteArticleInitial extends RemoteArticleState {}
