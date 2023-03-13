
import 'package:http/http.dart' as http;
import 'dart:developer';

class ApiService {

  Future getLatestNews() async {
    dynamic response;
    try {
      response = await http.get(Uri.parse('https://www.mmobomb.com/api1/latestnews'));
    } catch(e) {
      log(e.toString());
    }
    return response;
  }
}
