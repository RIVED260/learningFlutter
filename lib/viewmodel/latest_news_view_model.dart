import 'package:flutter/cupertino.dart';

import '../model/latest_news_model.dart';
import '../repository/latest_news_repository/LatestNewsRepository.dart';

class LatestNewsViewModel with ChangeNotifier {

  final repository = LatestNewsRepository();

  List<LatestNews> latestNews = [];

  Future<void> getLatestNews ()async{
    latestNews = await repository.getLatestNews();
    notifyListeners();
  }

}
