part of 'local_article_bloc.dart';

@immutable
abstract class LocalArticlesState extends Equatable{
  final List<ArticleEntity> ? articles;

  const LocalArticlesState({this.articles});

  @override
  List<Object?> get props => [articles!];
}

class LocalArticleInitial extends LocalArticlesState {}

class LocalArticleLoading extends LocalArticlesState{
  const LocalArticleLoading();
}

class LocalArticleSuccess extends LocalArticlesState{
  const LocalArticleSuccess(List<ArticleEntity> articles) : super(articles: articles);
}
