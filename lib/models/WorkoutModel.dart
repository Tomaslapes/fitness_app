import 'package:flutter/material.dart';

class Workout{
  int minDuration;
  String name;
  List<String> bodyParts = [];
  AssetImage image = AssetImage("");
  String leftImageUrl = "";
  String rightImageUrl = "";
  double difficulty;
  String strDiff;
  
  Workout({this.minDuration,this.name,this.bodyParts,this.image,this.difficulty,this.leftImageUrl,this.rightImageUrl}){
    if(difficulty>0.65){
      strDiff = "Hard";
    }else if(difficulty<0.25){
      strDiff = "Easy";
    }else{
      strDiff = "Medium";
    }
  }
}