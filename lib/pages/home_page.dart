import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
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
              children: [
                buildIntroContainer(),
                Container(
                  height: 80,
                  color: textHighlightColorOrange,
                  child: Marquee(
                    text:
                        'FLUTTER - DART - LARAVEL - JAVA - HTML - CSS - MYSQL - PYTHON  /  ',
                    style: const TextStyle(
                        fontSize: 25,
                        fontFamily: 'CindieMono',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                buildEducationExperienceContainer(context),
              ],
            ),
          ),
        ));
  }

  Container buildEducationExperienceContainer(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
    );
  }
}
