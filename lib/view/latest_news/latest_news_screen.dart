import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../viewmodel/latest_news_view_model.dart';
import 'latest_news_list_item.dart';

class LatestNewsScreen extends StatefulWidget {
  const LatestNewsScreen({Key? key}) : super(key: key);

  @override
  _LatestNewsScreenState createState() => _LatestNewsScreenState();
}

class _LatestNewsScreenState extends State<LatestNewsScreen> {
  LatestNewsViewModel viewModel = LatestNewsViewModel();

  @override
  void initState() {
    viewModel.getLatestNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF151026),
        title: const Text('Latest News'),
        centerTitle: true,
      ),
      body:  ChangeNotifierProvider<LatestNewsViewModel>(
        create: (BuildContext context) => viewModel,
        child: Consumer<LatestNewsViewModel>(
            builder: (context, viewModel, _){
              return ListView.builder(
                itemCount: viewModel.latestNews.length,
                itemBuilder: (context, index) {
                  return LatestNewsListItem(viewModel.latestNews[index]);
                },
              );
            }),
      ),
    );
  }
}
