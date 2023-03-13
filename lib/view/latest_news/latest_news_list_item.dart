import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/latest_news_model.dart';
import '../latest_news_detail/latest_news_detail_screen.dart';

class LatestNewsListItem extends StatefulWidget {
  LatestNews latestNewsItem;

  LatestNewsListItem(this.latestNewsItem, {super.key});

  @override
  _LatestNewsListItemState createState() => _LatestNewsListItemState();
}

class _LatestNewsListItemState extends State<LatestNewsListItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => LatestNewsDetailScreen(widget.latestNewsItem)));
                },
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 6, // 20%
                          child: Column(
                            children: [
                              Text(widget.latestNewsItem.title!, style: const TextStyle(fontWeight: FontWeight.bold)),
                              const SizedBox(
                                height: 8.0,
                              ),
                              Text(widget.latestNewsItem.shortDescription!),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Expanded(
                          flex: 4, // 20%
                          child: Column(
                            children: [
                              Image.network(widget.latestNewsItem.thumbnail!)
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ))));
  }
}
