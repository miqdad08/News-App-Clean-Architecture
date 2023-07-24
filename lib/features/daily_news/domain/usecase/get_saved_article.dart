
import 'package:news_app_clean_architecture/core/usecases/usecase.dart';
import 'package:news_app_clean_architecture/features/daily_news/domain/entities/article.dart';
import 'package:news_app_clean_architecture/features/daily_news/domain/repository/article_repository.dart';

class GetSavedArticle implements UseCase<List<ArticleEntity>, void>{

  final ArticleRepository _articleRepository;

  GetSavedArticle(this._articleRepository);

  @override
  Future<List<ArticleEntity>> call({void params}) {
    return _articleRepository.getSavedArticle();
  }

}