import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../../model/latest_news_model.dart';

class LatestNewsDetailScreen extends StatefulWidget {

  LatestNews latestNewsItem;
  LatestNewsDetailScreen(this.latestNewsItem, {super.key});

  @override
  State<LatestNewsDetailScreen> createState() => _LatestNewsDetailScreenState();
}

class _LatestNewsDetailScreenState extends State<LatestNewsDetailScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF151026),
        title: const Text("Latest News"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(widget.latestNewsItem.title!, style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                const SizedBox(height: 8.0),
                Html(data: widget.latestNewsItem.articleContent!)
              ],
            ),
          )
      ),
    );
  }
}
