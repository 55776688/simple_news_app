import 'package:flutter/material.dart';
import 'package:news_app/Screens/home_screen/home_components/app_bar.dart';
import 'package:news_app/Screens/home_screen/home_components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomAppBar(),
            Spacer(),
            Body(),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
