import 'package:bbc_news_clone_app/AppWidgets/b_b_c_app_bar.dart';
import 'package:bbc_news_clone_app/AppWidgets/my_app_page_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'BBC News',
        theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: BBCAppBar(),
          body: MyAppPageView(),
        ));
  }
}
