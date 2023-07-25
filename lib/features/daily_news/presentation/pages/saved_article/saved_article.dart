import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_clean_architecture/features/daily_news/domain/entities/article.dart';
import 'package:news_app_clean_architecture/features/daily_news/presentation/pages/article_detail/article_detail.dart';
import 'package:news_app_clean_architecture/features/daily_news/presentation/widgets/article_item.dart';

import '../../../../../injection_container.dart';
import '../../bloc/article/local/local_article_bloc.dart';

class SavedArticles extends StatelessWidget {
  static const String routeName = '/saved-article';

  const SavedArticles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
      sl<LocalArticlesBloc>()
        ..add(
          const GetSavedArticles(),
        ),
      child: Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      leading: Builder(
        builder: (BuildContext context) =>
            GestureDetector(
                onTap: () => _onBackButtonTapped(context),
                child: const Icon(
                  CupertinoIcons.chevron_back, color: Colors.black,)
            ),
      ),
      title: const Text('Saved Article', style: TextStyle(color: Colors.black)),
    );
  }

  Widget _buildBody() {
    return BlocBuilder<LocalArticlesBloc, LocalArticlesState>(
        builder: (context, state) {
          if (state is LocalArticleLoading) {
            return const Center(child: CupertinoActivityIndicator());
          }
          if (state is LocalArticleSuccess) {
            return _buildArticlesList(state.articles!,);
          }
          return const SizedBox();
        }
    );
  }

  Widget _buildArticlesList(List<ArticleEntity> articles) {
    if (articles.isEmpty) {
      return const Center(child: Text('NO SAVED ARTICLES'),);
    }
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: articles.length,
      itemBuilder: (context, index) {
        return ArticleWidget(
          article: articles[index],
          isRemovable: true,
          onRemove: (article) => _onRemoveArticle(context, article),
          onArticlePressed: (article) => _onArticlePressed(context, article),
        );
      },
    );
  }

  void _onBackButtonTapped(BuildContext context) {
    Navigator.pop(context);
  }

  void _onRemoveArticle(BuildContext context, ArticleEntity article) {
    BlocProvider.of<LocalArticlesBloc>(context).add(RemoveArticle(article));
  }

  void _onArticlePressed(BuildContext context, ArticleEntity article) {
    Navigator.pushNamed(context, ArticleDetail.routeName, arguments: article);
  }

}
