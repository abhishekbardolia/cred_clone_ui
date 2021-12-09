import 'package:cred_ui/screen/home_page/home_page.dart';
import 'package:cred_ui/utils/Constants.dart';
import 'package:flutter/material.dart';


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
      title: 'Cred UI',
      theme: ThemeData(
        primaryColor: iconsColors,
        fontFamily: 'Circular'
      ),
      home: HomePage(),
    );
  }
}
