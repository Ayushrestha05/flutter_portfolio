import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:timelines/timelines.dart';

class buildExperienceContainer extends StatelessWidget {
  buildExperienceContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ImageFiltered(
        imageFilter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
        child: GridView(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 450),
            children: [
              Card(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image:
                        AssetImage('assets/images/experience_background.gif'),
                    fit: BoxFit.cover,
                  )),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20, left: 20),
                      child: Text(
                        'Working\nExperiences',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'CindieMono'),
                      ),
                    ),
                  ),
                ),
              )
            ]..addAll(eventList.map((e) => workExperienceCard(
                  e: e,
                )))),
      ),
    );
  }

  final List<TimelineEvent> eventList = [
    TimelineEvent(
        time: 'June 2022 - December 2022',
        event: 'Associate Software Engineer L1 (Flutter)',
        subtitle: 'Yaj Tech Pvt. Ltd.'),
    TimelineEvent(
        time: 'July 2021 - November 2021',
        event: 'Flutter Developer',
        subtitle: 'Sarwa Technologies Pvt. Ltd.'),
    TimelineEvent(
        time: 'April 2021 - July 2021',
        event: 'Flutter Developer (Internship)',
        subtitle: 'Sarwa Technologies Pvt. Ltd.'),
  ];
}

class workExperienceCard extends StatelessWidget {
  final TimelineEvent e;

  const workExperienceCard({
    required this.e,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF2B303D),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              e.time,
              style: TextStyle(
                  color: Colors.grey, fontFamily: 'Bourgeois', fontSize: 15),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              e.event,
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Bourgeois', fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            e.subtitle != null
                ? Text(
                    e.subtitle!,
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Bourgeois',
                        fontSize: 15),
                    textAlign: TextAlign.center,
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}

class TimelineEvent {
  String time;
  String event;
  String? description;
  String? subtitle;

  TimelineEvent({
    required this.time,
    required this.event,
    this.description,
    this.subtitle,
  });
}
