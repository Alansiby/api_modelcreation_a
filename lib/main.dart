// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:api_modelcreation_a/controller/homescreen_controller.dart';
import 'package:api_modelcreation_a/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //import the multiprovider to show the data in homescreen
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeScreenController(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
