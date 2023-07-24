part of 'local_article_bloc.dart';

@immutable
abstract class LocalArticleEvent extends Equatable {
  final ArticleEntity? article;

  const LocalArticleEvent(this.article);

  @override
  List<Object?> get props => [article];
}
