import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'local_article_event.dart';
part 'local_article_state.dart';

class LocalArticleBloc extends Bloc<LocalArticleEvent, LocalArticleState> {
  LocalArticleBloc() : super(LocalArticleInitial()) {
    on<LocalArticleEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
