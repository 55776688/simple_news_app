import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app/models/article_model.dart';

class APIService {
  final BASE_URL =
      "http://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=8bbc0d6a842341b4b2e3daca83efd295";
  Future<List<Article>> getArticle() async {
    var result = await http.get(BASE_URL);
    if (result.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(result.body);
      List<dynamic> body = json['articles'];
      List<Article> articles =
      body.map((dynamic item) => Article.fromJson(item)).toList();
      return articles;
    } else {
      throw ("Error in getting Articles data. ");
    }
  }

}
