import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:bbc_news_clone_app/data/StoryCard.dart';

class ArticleType1 extends StatelessWidget {
  const ArticleType1({
    Key key,
    @required StoryCard card,
  })  : _card = card,
        super(key: key);

  final StoryCard _card;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("images/test_news_image.jpg"),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 8, right: 16),
          child: Text(
            _card.title,
            textAlign: TextAlign.left,
            style: new TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: Text(
                  _card.timeReleased,
                  style: new TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2.0, right: 8),
                child: Text(
                  '|',
                  style: new TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              InkWell(
                child: RichText(
                  text: TextSpan(
                    text: _card.whereFrom,
                    style: TextStyle(
                      color: Colors.red,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Scaffold.of(context).showSnackBar(
                            //TODO make link go to right page.
                            SnackBar(
                              content: Text('link worked'),
                            ),
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
