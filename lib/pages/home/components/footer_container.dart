import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio_web/pages/home/components/intro_container.dart';
import 'package:portfolio_web/utils/constants.dart';

class BuildFooterContainer extends StatelessWidget {
  const BuildFooterContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      color: textHighlightColorOrange,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LinkIconButton(
                  link: 'https://www.github.com/ayushrestha05',
                  openType: '_blank',
                  icon: FontAwesome.github),
              SizedBox(
                width: 20,
              ),
              LinkIconButton(
                  link: 'https://www.linkedin.com/in/ayushrestha05/',
                  openType: '_blank',
                  icon: FontAwesome.linkedin),
              SizedBox(
                width: 20,
              ),
              LinkIconButton(
                  link: 'https://www.instagram.com/brainoutofbounds/',
                  openType: '_blank',
                  icon: FontAwesome.instagram),
              SizedBox(
                width: 20,
              ),
              LinkIconButton(
                  link: 'mailto:ayushrestha05@gmail.com',
                  openType: '_blank',
                  icon: FontAwesome.envelope),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Designed and Developed by Ayush \'BrainOutOfBounds\' Shrestha, 2023',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Bourgeois', fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
