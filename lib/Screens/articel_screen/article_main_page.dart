import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Screens/articel_screen/articel_components/articleHead.dart';
import 'package:news_app/constant.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/api_service.dart';

class MainArticlePage extends StatefulWidget {
  @override
  _MainArticlePageState createState() => _MainArticlePageState();
}

class _MainArticlePageState extends State<MainArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text("Breaking News", style: TextStyle(color: kDarkButton,fontWeight: FontWeight.bold)),
        backgroundColor: Colors.yellow[100],
        centerTitle: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        leadingWidth: 50.0,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 25,
                  color: kDarkButton,
                ))
          ],
        ),
      ),
      body: FutureBuilder(
        future: APIService().getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          if (snapshot.hasData) {
            List<Article> articles = snapshot.data;
            return ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) =>
                  articleHead(articles[index], context),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
