import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio_web/pages/home/components/flip_card.dart';

class BuildExperienceContainer extends StatelessWidget {
  BuildExperienceContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExperienceGrid(eventList: eventList);
  }

  final List<TimelineEvent> eventList = [
    TimelineEvent(
        time: 'June 2022 - December 2022',
        event: 'Associate Software Engineer L1 (Flutter)',
        subtitle: 'Yaj Tech Pvt. Ltd.',
        description: [
          'Learnt BLoC in the early stages of work and now currently using BLoC as Primary State Management in Flutter.',
          'Bug Fixes done for Sociair and Ambition Guru',
          'Added New UI and Features to Sociair, Ambition Guru and Easy Path Lab (User and Partner).',
          'Created User Storyboards and App Flow for Easy Path Lab - User',
          'Did Research on Implementing Call Recording System in Flutter Application',
        ]),
    TimelineEvent(
      time: 'July 2021 - November 2021',
      event: 'Flutter Developer',
      subtitle: 'Sarwa Technologies Pvt. Ltd.',
      description: [
        'Worked on the development of Patro app, converting the given UI designs to Flutter/Dart code and improved UX.',
        'Worked on the development of Notifications App for S Café.'
      ],
    ),
    TimelineEvent(
      time: 'April 2021 - July 2021',
      event: 'Flutter Developer (Internship)',
      subtitle: 'Sarwa Technologies Pvt. Ltd.',
      description: [
        'Joined Sarwa Technologies as a Flutter Developer Intern and helped the company in developing the UI for Haathaima Uddham App using Flutter.',
        'Learnt various aspects of Flutter and gained valuable experience on client-meetings, project development, UI/UX development.'
      ],
    ),
  ];
}

class ExperienceGrid extends StatelessWidget {
  const ExperienceGrid({
    super.key,
    required this.eventList,
  });

  final List<TimelineEvent> eventList;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ImageFiltered(
        imageFilter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
        child: GridView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
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
}

class workExperienceCard extends StatelessWidget {
  final TimelineEvent e;

  const workExperienceCard({
    required this.e,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: e.event,
      child: Card(
        clipBehavior: Clip.antiAlias,
        color: const Color(0xFF2B303D),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(PageRouteBuilder(
                opaque: false,
                barrierDismissible: true,
                barrierColor: Colors.black.withOpacity(0.5),
                pageBuilder: (BuildContext context, _, __) {
                  return CardFlipDialog(
                    timelineEvent: e,
                  );
                }));
          },
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  e.time,
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Bourgeois',
                      fontSize: 15),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  e.event,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Bourgeois',
                      fontSize: 20),
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
        ),
      ),
    );
  }
}

class TimelineEvent {
  String time;
  String event;
  List<String>? description;
  String? subtitle;

  TimelineEvent({
    required this.time,
    required this.event,
    this.description,
    this.subtitle,
  });
}
