// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:api_modelcreation_a/controller/homescreen_controller.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  //to access the data from controller
  void initState() {
    Provider.of<HomeScreenController>(context, listen: false).convertToModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //to access the data from controller
    final homescreenprovider = Provider.of<HomeScreenController>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            //accessing the data from controller to show  in screen
            Text(homescreenprovider.student?.name.toString() ?? ""),
            SizedBox(
              height: 10,
            ),
            Text(homescreenprovider.student?.age.toString() ?? ""),
            SizedBox(
              height: 10,
            ),
            Text(homescreenprovider.student?.phone.toString() ?? ""),
            SizedBox(
              height: 10,
            ),
            Text(homescreenprovider.student?.dep.toString() ?? ""),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
