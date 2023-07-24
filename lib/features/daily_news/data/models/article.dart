import 'package:floor/floor.dart';
import 'package:news_app_clean_architecture/features/daily_news/domain/entities/article.dart';


@Entity(tableName: 'article', primaryKeys: ['id'])
class ArticleModel{
  ArticleModel({
    this.id,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  final int? id;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;

  factory ArticleModel.fromJson(Map<String, dynamic> map) {
    return ArticleModel(
      author: map['author'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      url: map['url'] ?? '',
      urlToImage: map['urlToImage'] ?? '',
      publishedAt: map['publishedAt'] ?? '',
      content: map['content'] ?? '',
    );
  }

  ArticleEntity toEntity() {
    return ArticleEntity(
      id: id,
      author: author,
      title: title,
      description: description,
      url: url,
      urlToImage: urlToImage,
      publishedAt: publishedAt,
      content: content,
    );
  }

  factory ArticleModel.fromEntity(ArticleEntity entity){
    return ArticleModel(
      id: entity.id,
      author: entity.author,
      title: entity.title,
      description: entity.description,
      url: entity.url,
      urlToImage: entity.urlToImage,
      publishedAt: entity.publishedAt,
      content: entity.content,
    );
  }
}

// import 'package:news_app_clean_architecture/features/daily_news/domain/entities/article.dart';

// class ArticleModel extends ArticleEntity {
//   const ArticleModel({
//     int? id,
//     String? author,
//     String? title,
//     String? description,
//     String? url,
//     String? urlToImage,
//     String? publishedAt,
//     String? content,
//   });
//
//   factory ArticleModel.fromJson(Map<String, dynamic> map) {
//     return ArticleModel(
//       author: map['author'] ?? '',
//       title: map['title'] ?? '',
//       description: map['description'] ?? '',
//       url: map['url'] ?? '',
//       urlToImage: map['urlToImage'] ?? '',
//       publishedAt: map['publishedAt'] ?? '',
//       content: map['content'] ?? '',
//     );
//   }
// }
