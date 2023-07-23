part of 'remote_article_bloc.dart';

@immutable
abstract class RemoteArticlesState extends Equatable {
  final List<ArticleEntity>? articles;
  final DioException? error;

  const RemoteArticlesState({this.articles, this.error});

  @override
  List<Object> get props => [articles!, error!];
}

class RemoteArticleInitial extends RemoteArticlesState {}

class RemoteArticleLoading extends RemoteArticlesState {
  const RemoteArticleLoading();
}

class RemoteArticleSuccess extends RemoteArticlesState {
  const RemoteArticleSuccess(List<ArticleEntity> article)
      : super(articles: article);
}

class RemoteArticleFailed extends RemoteArticlesState {
  const RemoteArticleFailed(DioException error) : super(error: error);
}
