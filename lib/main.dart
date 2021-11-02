import 'package:flutter/material.dart';
import 'package:watch_store/details_screen/details_page.dart';
import 'package:watch_store/home_screen/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'dosis'),
      routes: {
        DetailsScreen.routeName: (context) => DetailsScreen(),
      },
      home: HomeScreen(),
    );
  }
}
