import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Screens/articel_screen/articel_components/default_button.dart';
import 'package:news_app/Screens/articel_screen/article_main_page.dart';
import 'package:news_app/constant.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("assets/images/logo.jpg"),
          ),
          SizedBox(width: size.width * 0.02),
          Text(
            "News".toUpperCase(),
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          menuItem(
            title: "Home",
            press: () {},
          ),
          menuItem(
            title: "News",
            press: () {
              moveToNextPage(context, MainArticlePage());
            },
          ),
          menuItem(
            title: "Login",
            press: () {},
          ),
          DefaultButton(
            text: "Get News",
            press: () {
              moveToNextPage(context, MainArticlePage());
            },
          ),
        ],
      ),
    );
  }

  Widget menuItem({
    Key key,
    String title,
    Function press,
  }) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title.toUpperCase(),
          style: TextStyle(
            color: kTextcolor.withOpacity(0.3),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Future moveToNextPage(BuildContext context, Widget widget) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
  }
}
