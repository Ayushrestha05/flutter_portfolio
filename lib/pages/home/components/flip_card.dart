import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_web/pages/home/components/education_experience_container.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class CardFlipDialog extends StatelessWidget {
  final TimelineEvent timelineEvent;

  const CardFlipDialog({super.key, required this.timelineEvent});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: timelineEvent.event,
        child: ConstrainedBox(
          constraints: BoxConstraints(
              maxHeight: ResponsiveBreakpoints.of(context).screenHeight / 1.5,
              maxWidth: ResponsiveBreakpoints.of(context).screenWidth / 2),
          child: Card(
            color: Color(0xFF2B303D),
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    timelineEvent.time,
                    style: TextStyle(
                        fontFamily: 'Bourgeois',
                        fontSize: 18.w,
                        color: Colors.grey),
                  ),
                  Text(
                    timelineEvent.event,
                    style: TextStyle(
                        fontFamily: 'Bourgeois',
                        fontSize: 20.sp,
                        color: Colors.white),
                  ),
                  Text(
                    timelineEvent.subtitle ?? '',
                    style: TextStyle(
                        fontFamily: 'Bourgeois',
                        fontSize: 18.sp,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  timelineEvent.description != null &&
                          (timelineEvent.description ?? []).isNotEmpty
                      ? Flexible(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: timelineEvent.description!
                                    .map((e) => Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            const Text(
                                              '\u2022',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  height: 1.55,
                                                  color: Colors.white),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Flexible(
                                              child: Text(
                                                e,
                                                textAlign: TextAlign.left,
                                                softWrap: true,
                                                style: const TextStyle(
                                                  fontFamily: 'Bourgeois',
                                                  fontSize: 16,
                                                  height: 1.55,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ))
                                    .toList(),
                              ),
                            ),
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
