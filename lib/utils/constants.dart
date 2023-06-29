import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

const textHighlightColorOrange = Color(0xFFE55812);

int getResponsiveGridValue({required BuildContext context}) {
  if (ResponsiveBreakpoints.of(context).equals(DESKTOP)) {
    return 3;
  } else if (ResponsiveBreakpoints.of(context).equals(TABLET)) {
    return 2;
  } else {
    return 4;
  }
}
