part of 'remote_article_bloc.dart';

@immutable
abstract class RemoteArticleState extends Equatable {
  final List<ArticleEntity>? articles;
  final DioException? error;

  const RemoteArticleState({this.articles, this.error});

  @override
  List<Object> get props => [articles!, error!];
}

class RemoteArticleInitial extends RemoteArticleState {}

class RemoteArticleLoading extends RemoteArticleState {
  const RemoteArticleLoading();
}

class RemoteArticleSuccess extends RemoteArticleState {
  const RemoteArticleSuccess(List<ArticleEntity> article)
      : super(articles: article);
}

class RemoteArticleFailed extends RemoteArticleState {
  const RemoteArticleFailed(DioException error) : super(error: error);
}
