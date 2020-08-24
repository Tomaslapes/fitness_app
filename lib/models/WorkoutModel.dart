import 'package:flutter/material.dart';

class Workout{
  int minDuration;
  String name;
  List<String> bodyParts = [];
  AssetImage image = AssetImage("");
  
  Workout({this.minDuration,this.name,this.bodyParts,this.image});
}