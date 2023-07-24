import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:news_app_clean_architecture/features/daily_news/domain/entities/article.dart';

part 'local_article_event.dart';
part 'local_article_state.dart';

class LocalArticleBloc extends Bloc<LocalArticleEvent, LocalArticleState> {
  LocalArticleBloc() : super(LocalArticleInitial()) {
    on<LocalArticleEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
