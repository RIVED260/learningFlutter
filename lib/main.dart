import 'package:flutter/material.dart';
import 'package:latest_news/view/latest_news/latest_news_screen.dart';
import 'package:latest_news/viewmodel/latest_news_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => LatestNewsViewModel())],
      child: const MaterialApp(
        title: 'Latest News',
        home: LatestNewsScreen(),
      ),
    );
  }
}
