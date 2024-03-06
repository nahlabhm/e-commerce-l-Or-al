import 'package:flutter/material.dart';
import 'package:makeup/models/newProductsData.dart';
import 'package:makeup/ombording/ombording.dart';
import 'package:makeup/screens/home/homescreen.dart';
import 'package:makeup/screens/navbar/navbar.dart';
import 'package:provider/provider.dart';

void main() {
runApp(
    ChangeNotifierProvider(
      create: (BuildContext context)=>Shop(),
    child:const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Muli"
      ),
      home: const OmbordingScreen()
    );
  }
}
