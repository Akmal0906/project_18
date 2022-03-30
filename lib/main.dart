import 'package:flutter/material.dart';
import 'package:project_18/detail_page.dart';
import 'package:project_18/pages/course_page.dart';
import 'package:project_18/pages/first_page.dart';
import 'package:project_18/pages/home_page.dart';
import 'package:project_18/pages/part_page.dart';
import 'package:project_18/pages/second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
      routes: {
        FirstPage.id:(context)=>FirstPage(),
        CoursePage.id:(context)=>CoursePage(),
        PartPage.id:(context)=>PartPage(),
        HomePage.id: (context) => HomePage(),
        DetaillPage.id: (context) => DetaillPage(),
        SecondPage.id:(context)=>SecondPage()
      },
    );
  }
}
