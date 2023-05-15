import 'package:flutter/material.dart';
import 'package:portfolio_web/pages/home_page.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BrainOutOfBounds',
      builder: (context, child) =>
          ResponsiveBreakpoints.builder(child: child!, breakpoints: [
        const Breakpoint(start: 0, end: 450, name: MOBILE),
        const Breakpoint(start: 451, end: 799, name: TABLET),
        const Breakpoint(start: 800, end: 1919, name: DESKTOP),
        const Breakpoint(start: 1920, end: double.infinity, name: '4K'),
      ]),
      home: const HomePage(),
    );
  }
}
