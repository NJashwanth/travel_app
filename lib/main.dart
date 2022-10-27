import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'modules/home/views/screens/home_index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      theme: ThemeData(
          textTheme: GoogleFonts.urbanistTextTheme(),
          appBarTheme:
              const AppBarTheme(iconTheme: IconThemeData(color: Colors.white))),
      home: const HomeIndex(),
    );
  }
}
