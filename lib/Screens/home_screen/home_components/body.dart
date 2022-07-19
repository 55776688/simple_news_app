import 'package:flutter/material.dart';
import 'package:news_app/constant.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Breaking News".toUpperCase(),
            style: Theme.of(context).textTheme.headline3.copyWith(
              color: kTextcolor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            color: Colors.yellow[100],
            child: Text(
              "We understand you don’t have time to go through long news articles every day \n So we cut the clutter and deliver them,\n in 70-word shorts. Short news for the mobile generation.",
              style: TextStyle(
                fontSize: 21,
                color: kTextcolor.withOpacity(0.90),
              ),
            ),
          ),
        ],
      ),
    );
  }
}