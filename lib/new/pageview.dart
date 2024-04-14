// ignore_for_file: prefer_const_constructors, prefer_final_fields, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, unused_field, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/page_5.dart';

import '../screens/page_1.dart';
import '../screens/page_2.dart';
import '../screens/page_3.dart';
import '../screens/page_4.dart';
import '../screens/page_6.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPageIndex = 0;
  bool _isFullScreen = false;

  final List<Widget> _pages = [
    PageContent1(),
    PageContent2(),
    PageContent3(),
    PageContent4(),
    PageContent5(),
    PageContent6(),
  ];

  void nextPage() {
    setState(() {
      _currentPageIndex = (_currentPageIndex + 1) % _pages.length;
    });
  }

  void previousPage() {
    setState(() {
      _currentPageIndex = (_currentPageIndex - 1) % _pages.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: _pages[_currentPageIndex],
        floatingActionButton: Column(
          children: [
            SizedBox(
              height: size.height * 0.05,
            ),
            FloatingActionButton(
              mini: true,
              onPressed:
                  //  null,
                  nextPage,
              tooltip: 'Next',
              child: Icon(Icons.arrow_forward),
            ),
            FloatingActionButton(
              mini: true,
              onPressed:
                  //  null,
                  previousPage,
              tooltip: 'Next',
              child: Icon(Icons.arrow_back),
            ),
          ],
        )

        );
  }
}

