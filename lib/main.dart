import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tiktok_clone/screens/home_srceen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          textTheme:
              GoogleFonts.notoSansAdlamTextTheme(Theme.of(context).textTheme)),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
