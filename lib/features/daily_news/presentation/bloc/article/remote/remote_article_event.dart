part of 'remote_article_bloc.dart';

@immutable
abstract class RemoteArticlesEvent extends Equatable{
  const RemoteArticlesEvent();
}

class GetArticles extends RemoteArticlesEvent {
  const GetArticles();

  @override
  List<Object> get props => [];
}
