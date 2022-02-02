import 'package:flutter/material.dart';
import 'package:fitness_app/pages/home.dart';
import 'package:fitness_app/pages/Diary.dart';
import 'package:fitness_app/pages/WorkoutScreen.dart';
import 'package:fitness_app/pages/MainPage.dart';



void main() {
  runApp(MaterialApp(
    routes: {
      "/":(context)=>MainPage(),
      "/home":(context)=>home(),
      "/diary":(context)=>Diary(),
      "/workoutScreen":(context)=>WorkoutScreen(),
    },

    debugShowCheckedModeBanner: false,
    debugShowMaterialGrid: false,
    showPerformanceOverlay: false,
  ));
}

