import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'dart:html' as html;
import '../../utils/constants.dart';

class buildIntroContainer extends StatelessWidget {
  const buildIntroContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ResponsiveRowColumn(
            layout: ResponsiveBreakpoints.of(context).smallerThan('DESKTOP')
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            children: [
              // Info Container
              ResponsiveRowColumnItem(
                child: Expanded(
                  flex: ResponsiveBreakpoints.of(context).smallerThan('DESKTOP')
                      ? 0
                      : 1,
                  child: Container(
                    // Setting the container height to the screen height whilst reducing the padding of the container
                    height: ResponsiveBreakpoints.of(context).screenHeight - 24,
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color(0xFFF2F2F2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: 'Meet',
                              style: TextStyle(
                                  fontFamily: 'CindieMono',
                                  fontSize: 30,
                                  color: Colors.black)),
                          TextSpan(
                              text: '\nAyush ',
                              style: TextStyle(
                                  fontFamily: 'CindieMono',
                                  fontSize: 30,
                                  color: textHighlightColorOrange)),
                          TextSpan(
                              text: 'Shrestha',
                              style: TextStyle(
                                  fontFamily: 'CindieMono',
                                  fontSize: 30,
                                  color: Colors.black)),
                        ])),
                        Text(
                          'With my expertise in Dart programming and Flutter framework, I can help you create beautiful and functional cross-platform mobile apps in record time. Let\'s collaborate and bring your app ideas to life!',
                          style:
                              TextStyle(fontFamily: 'Bourgeois', fontSize: 20),
                        ),
                        //Contact me button

                        Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // Open the link
                                // _self: Open the link in the same window.
                                // _parent: Open the link in the parent window.
                                // _top: Open the link in the topmost window.
                                html.window.open(
                                    'mailto:ayushrestha05@gmail.com', '_self');
                              },
                              child: const Text('Contact Me'),
                              style: ElevatedButton.styleFrom(
                                  primary: textHighlightColorOrange,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 22),
                                  textStyle: const TextStyle(
                                      fontSize: 20, fontFamily: 'Bourgeois')),
                            ),
                            LinkIconButton(
                                link: 'https://www.github.com/ayushrestha05',
                                openType: '_blank',
                                icon: FontAwesome.github),
                            LinkIconButton(
                                link:
                                    'https://www.linkedin.com/in/ayushrestha05/',
                                openType: '_blank',
                                icon: FontAwesome.linkedin),
                            LinkIconButton(
                                link:
                                    'https://www.instagram.com/brainoutofbounds/',
                                openType: '_blank',
                                icon: FontAwesome.instagram),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              // Spacing Container
              ResponsiveRowColumnItem(
                  child:
                      ResponsiveBreakpoints.of(context).smallerThan('DESKTOP')
                          ? Container()
                          : SizedBox(
                              width: 12,
                              height: 12,
                            )),
              // Profile Photo Container
              ResponsiveRowColumnItem(
                child: ResponsiveBreakpoints.of(context).smallerThan('DESKTOP')
                    ? Container()
                    : Container(
                        height:
                            ResponsiveBreakpoints.of(context).screenHeight - 24,
                        width: 300,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image:
                                  AssetImage('assets/images/profile_photo.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class LinkIconButton extends StatelessWidget {
  String link;
  String openType;
  IconData icon;

  LinkIconButton({
    super.key,
    required this.link,
    required this.openType,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Open the link
        // _self: Open the link in the same window.
        // _parent: Open the link in the parent window.
        // _top: Open the link in the topmost window.
        // _blank: Open the link in a new window.
        html.window.open(link, openType);
      },
      child: Icon(
        icon,
        color: Colors.black,
      ),
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      ),
    );
  }
}
