import 'package:fitness_app/models/WorkoutModel.dart';
import 'package:flutter/material.dart';

List<Workout> favWorkouts = [
  Workout(
      name: "Heavy workout",
      minDuration: 60,
      bodyParts: ["Arms","Back","Shoulders"],
      image: AssetImage("lib/images/workout1.png")
  ),
  Workout(
      name: "Heavy workout",
      minDuration: 60,
      bodyParts: ["Arms","Back","Shoulders"],
      image: AssetImage("lib/images/workout2.png")
  ),
  Workout(
      name: "Heavy workout",
      minDuration: 60,
      bodyParts: ["Arms","Back","Shoulders"],
      image: AssetImage("lib/images/workout3.png")
  ),
];