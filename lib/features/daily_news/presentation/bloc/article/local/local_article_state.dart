part of 'local_article_bloc.dart';

@immutable
abstract class LocalArticleState extends Equatable{
  final List<ArticleEntity> ? articles;

  const LocalArticleState({this.articles});

  @override
  List<Object?> get props => [articles!];
}

class LocalArticleInitial extends LocalArticleState {}

class LocalArticleLoading extends LocalArticleState{
  const LocalArticleLoading();
}

class LocalArticleSuccess extends LocalArticleState{
  const LocalArticleSuccess(List<ArticleEntity> articles) : super(articles: articles);
}
