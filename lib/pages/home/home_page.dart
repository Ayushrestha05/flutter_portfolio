import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:portfolio_web/pages/home/components/education_experience_container.dart';
import 'package:portfolio_web/utils/constants.dart';

import 'components/intro_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                buildIntroContainer(),
                buildMarquee(
                    text:
                        'FLUTTER - DART - LARAVEL - JAVA - HTML - CSS - MYSQL - PYTHON  /  '),
                buildExperienceContainer(),
                buildMarquee(text: 'BrainOutOfBounds  ')
              ],
            ),
          ),
        ));
  }

  Widget buildMarquee({required String text}) {
    return Container(
      height: 80,
      color: textHighlightColorOrange,
      child: Marquee(
        text: text,
        style: const TextStyle(
            fontSize: 25,
            fontFamily: 'CindieMono',
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
    );
  }
}
