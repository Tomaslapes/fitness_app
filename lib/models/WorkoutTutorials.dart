import 'package:fitness_app/models/TutorialModel.dart';
import 'package:fitness_app/widgets/TutorialCard.dart';
import 'package:fitness_app/widgets/TutorialDivider.dart';
import 'package:flutter/cupertino.dart';

Map tutorials = {
  "Arm workout": Tutorial("Arm workout",[
  TutorialDivider("1. Warm-up"),
  TutorialCard(name: "Bicep curls",goals:["15 times 4kg","15 times 4kg","10 times 4kg"],imageUrl:"lib/images/ramena1.png"),
  TutorialDivider("1. Naostro",false),
  TutorialCard(name: "Bicep curls",goals:["12 times 7kg","10 times 8kg", "6 times 9kg"],imageUrl:"lib/images/ramena1.png"),
  TutorialDivider(),
  TutorialCard(name: "FT-325",goals:["15 times 40lbs","12 times 50lbs","8 times 60 lbs"],imageUrl:"lib/images/FT-325.png"),
  TutorialDivider(),
  TutorialCard(name: "Close-grip Bench press",goals:["Warm-up 5kg","15 times 7.5kg","10 times 10kg"],imageUrl:"lib/images/close-grip.png"),
  TutorialDivider("Double exercise-repeat 3x",false),
    TutorialCard(name:"Push-ups",goals:["10 times"],imageUrl: "lib/images/pushUps.png",),
    TutorialDivider(),
    TutorialCard(name:"Tower - slanted bar",goals:["15 times 50lbs"],imageUrl: "lib/images/FT-325.png",),

  ]),
  "Back/Shoulders":Tutorial("Back/Shoulders", [

  ])
};