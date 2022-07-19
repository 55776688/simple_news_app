import 'package:flutter/material.dart';
import 'package:news_app/constant.dart';
import 'package:news_app/models/article_model.dart';

class ArticlePage extends StatelessWidget {
  final Article article;

  ArticlePage({this.article});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title,style: TextStyle(color: kDarkButton,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.yellow[100],
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.5,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: article.urlToImage == null
                        ? const AssetImage("assets/images/not_found.jpeg")
                        : NetworkImage(article.urlToImage),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: kDarkButton,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Text(
                article.source.name ?? const SizedBox(),
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Text(
              article.description ?? const SizedBox(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
