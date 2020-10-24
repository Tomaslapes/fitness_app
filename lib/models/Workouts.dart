import 'package:fitness_app/models/WorkoutModel.dart';
import 'package:flutter/material.dart';

List<Workout> favWorkouts = [
  Workout(
      name: "Arm workout",
      minDuration: 60,
      bodyParts: ["Arms","Biceps","Forearms"],
      image: AssetImage("lib/images/workout1.png"),
      difficulty: 0.5,
      leftImageUrl: "lib/images/womanArms.png",
    rightImageUrl: "lib/images/manArms.png"
  ),
  Workout(
      name: "Back/Breast",
      minDuration: 85,
      bodyParts: ["Arms","Back","Shoulders"],
      image: AssetImage("lib/images/backExcer.jpg"),
      difficulty: 0.7,
      leftImageUrl: "lib/images/womanArms.png",
      rightImageUrl: "lib/images/manArms.png"
  ),
  Workout(
      name: "Legs/Arms",
      minDuration: 30,
      bodyParts: ["Arms","Legs","Biceps"],
      image: AssetImage("lib/images/legs-workout.jpg"),
      difficulty: 0.25,
      leftImageUrl: "lib/images/womanArms.png",
      rightImageUrl: "lib/images/manArms.png"
  ),
];