import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:news_app_clean_architecture/features/daily_news/domain/usecase/get_saved_article.dart';
import 'package:news_app_clean_architecture/features/daily_news/domain/usecase/save_article.dart';

import '../../../../domain/usecase/remove_article.dart';

part 'local_article_event.dart';

part 'local_article_state.dart';

class LocalArticleBloc extends Bloc<LocalArticlesEvent, LocalArticlesState> {
  final GetSavedArticleUseCase _getSavedArticleUseCase;
  final SaveArticleUseCase _saveArticleUseCase;
  final RemoveArticleUseCase _removeArticleUseCase;

  LocalArticleBloc(
    this._getSavedArticleUseCase,
    this._saveArticleUseCase,
    this._removeArticleUseCase,
  ) : super(LocalArticleInitial()) {
    on<LocalArticlesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
