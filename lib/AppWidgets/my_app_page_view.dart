import 'package:flutter/cupertino.dart';
import 'package:bbc_news_clone_app/AppWidgets/top_stories_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class MyAppPageView extends StatelessWidget {
  MyAppPageView({
    Key key,
  }) : super(key: key);

  final tab = new TabBar(tabs: <Tab>[
    new Tab(text: 'Top Stories'),
    new Tab(text: 'My News'),
    new Tab(text: 'Popular'),
    new Tab(text: 'Video'),
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: new PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: new Container(
              color: Theme.of(context).primaryColor,
              child: tab,
            ),
          ),
          backgroundColor: Colors.blueGrey,
          body: TabBarView(
            children: [
              TopStoriesPageView(),
              Container(
                color: Colors.blueGrey,
                child: Center(
                  child: Image.asset('images/test_news_image.jpg'),
                ),
              ),
              Container(
                color: Colors.red,
                child: Center(),
              ),
              Container(
                color: Colors.blueGrey,
                child: Center(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
