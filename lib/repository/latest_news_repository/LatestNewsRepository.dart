
import 'package:latest_news/data/network/ApiService.dart';
import 'package:latest_news/model/latest_news_model.dart';

class LatestNewsRepository {

  final apiService = ApiService();

  Future<List<LatestNews>> getLatestNews() async {
    dynamic response = await apiService.getLatestNews();
    if (response.statusCode == 200) {
      return newsModelFromJson(response.body);
    } else {
      throw Exception('Failed to load');
    }
  }
}
