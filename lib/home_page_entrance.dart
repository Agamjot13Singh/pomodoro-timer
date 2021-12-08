import 'package:flutter/material.dart';
import 'package:pomodoro/src/home_page_detailed.dart';

class HomePageEntry extends StatelessWidget {
  const HomePageEntry({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Center(
          child: HomePageDetail(),
        ),
      );
  }
}