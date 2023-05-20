// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:seat_finder/berth/rows.dart';
import 'package:seat_finder/search_bar/search_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seat Finder',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SeatFinder(),
    );
  }
}

class SeatFinder extends StatefulWidget {
  const SeatFinder({super.key});

  @override
  State<SeatFinder> createState() => _SeatFinderState();
}

class _SeatFinderState extends State<SeatFinder> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.fromLTRB(20, 50, 20, 50),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Seat Finder",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SearchField(),
                SizedBox(
                  height: 30,
                ),
                rows(1),
                SizedBox(
                  height: 10,
                ),
                rows(2),
                SizedBox(
                  height: 1,
                ),
                rows(3),
                SizedBox(
                  height: 10,
                ),
                rows(4),
                SizedBox(
                  height: 1,
                ),
                rows(5),
                SizedBox(
                  height: 10,
                ),
                rows(6),
                SizedBox(
                  height: 1,
                ),
                rows(7),
                SizedBox(
                  height: 10,
                ),
                rows(8),
                SizedBox(
                  height: 1,
                ),
                rows(9),
                SizedBox(
                  height: 10,
                ),
                rows(10),
                SizedBox(
                  height: 1,
                ),
                rows(11),
                SizedBox(
                  height: 10,
                ),
                rows(12),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
