import 'package:flutter/material.dart';
import 'package:pbooks/utilities/utils.dart';

import 'views/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PBooks',
      theme: mainTheme,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
