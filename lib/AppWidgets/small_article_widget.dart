import 'package:bbc_news_clone_app/AppWidgets/article_type1.dart';
import 'package:bbc_news_clone_app/AppWidgets/article_type2.dart';
import 'package:flutter/material.dart';

import 'package:bbc_news_clone_app/data/StoryCard.dart';

class SmallArticleWidget extends StatelessWidget {
  SmallArticleWidget(this._card);

  StoryCard _card;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        //TODO make it clickable
        child: Expanded(
          child: Container(
            height: 150,
            color: Colors.white,
            child: ArticleType2(card: _card),
          ),
        ),
      ),
    );
  }
}