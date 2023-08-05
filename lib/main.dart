// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:news_app/screens/explore_page_widget.dart';
import 'package:news_app/screens/home_page_widget.dart';
import 'package:news_app/screens/podcast_page_widget.dart';
import 'package:news_app/screens/saved_page.dart';
import 'package:news_app/screens/settings_page.dart';
import 'package:news_app/screens/weekly_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: HomePageWidget(),
      routes: {
        '/home': (context) => HomePageWidget(),
        '/settings': (context) => SettingsPage(),
        '/explore': (context) => explore_widget(),
        '/weekly': (context) => WeeklyScreen(),
        '/podcast': (context) => podcastWidget(),
        '/saved': (context) => SavedPage(),
      },
    );
  }
}
