import 'package:flutter/material.dart';
import 'package:news_app/Screens/articel_screen/articles_details_page.dart';
import 'package:news_app/constant.dart';
import 'package:news_app/models/article_model.dart';

Widget articleHead(Article article, BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ArticlePage(
                    article: article,
                  )));
    },
    child: Container(
      margin: const EdgeInsets.all(12.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 3.0,
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.height * 0.2,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: article.urlToImage == null
                      ? const AssetImage("assets/images/not_found.jpeg")
                      : NetworkImage(article.urlToImage),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
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
            height: size.height * 0.01,
          ),
          Text(
            article.title ?? const SizedBox(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          )
        ],
      ),
    ),
  );
}
