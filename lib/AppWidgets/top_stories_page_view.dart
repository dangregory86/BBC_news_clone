import 'package:bbc_news_clone_app/AppWidgets/small_article_widget.dart';
import 'package:bbc_news_clone_app/data/StoryCard.dart';
import 'package:flutter/material.dart';
import 'package:bbc_news_clone_app/AppWidgets/large_article_widget.dart';

class TopStoriesPageView extends StatelessWidget {
  const TopStoriesPageView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
            padding: EdgeInsets.only(top: 0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(<Widget>[
                LargeArticleWidget(
                  new StoryCard(
                      'story title over and over!!', 'Time released', 'UK'),
                ),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 250,
                          child: LargeArticleWidget(
                            new StoryCard('story three over and over!!',
                                'Time released', 'UK'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 250,
                          child: LargeArticleWidget(
                            new StoryCard(
                                'story two over and over!!', 'Time released', 'UK'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SmallArticleWidget(
                  new StoryCard(
                      'story oops over and over!!', 'Time released', 'UK'),
                ),
                SmallArticleWidget(
                  new StoryCard(
                      'story oops over and over!!', 'Time released', 'UK'),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
