import 'package:news_app_clean_architecture/features/daily_news/domain/entities/article.dart';
import '../../../../core/resources/data_state.dart';

abstract class ArticleRepository{
  //Api Method
  Future<DataState<List<ArticleEntity>>> getNewsArticles();

  // Database Methods
  Future<List<ArticleEntity>> getSavedArticle();

  Future<void> saveArticle(ArticleEntity article);

  Future<void> deleteArticle(ArticleEntity articleEntity);
}