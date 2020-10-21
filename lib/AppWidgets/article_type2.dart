import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:bbc_news_clone_app/data/StoryCard.dart';

class ArticleType2 extends StatelessWidget {
  const ArticleType2({
    Key key,
    @required StoryCard card,
  })  : _card = card,
        super(key: key);

  final StoryCard _card;


  @override
  Widget build(BuildContext context) {
    double halfScreen = MediaQuery.of(context).size.width/2 ;
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: halfScreen,
            child: Image.asset("images/test_news_image.jpg",
            fit: BoxFit.fitHeight,),
          ),
          Container(
            width: halfScreen - 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 8, right: 16),
                  child: Text(
                    _card.title,
                    textAlign: TextAlign.left,
                    style: new TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Flexible(
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Text(
                              _card.timeReleased,
                              style: new TextStyle(
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Text(
                            '|  ',
                            style: new TextStyle(
                              fontWeight: FontWeight.w300,
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
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
