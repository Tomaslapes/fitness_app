import 'package:fitness_app/models/TutorialModel.dart';
import 'package:fitness_app/widgets/TutorialCard.dart';
import 'package:fitness_app/widgets/TutorialDivider.dart';
import 'package:flutter/cupertino.dart';

Map tutorials = {
  "Arm workout": Tutorial("Arm workout",[
  TutorialDivider("1. Warm-up"),
  TutorialCard(name: "Bicep curls",goals:["15 times 4kg","15 times 4kg","10 times 4kg"],imageUrl:"lib/images/ramena1.png"),
  TutorialDivider("2. Lets Go!",false),
  TutorialCard(name: "Bicep curls",goals:["12 times 7kg","10 times 8kg", "6 times 9kg"],imageUrl:"lib/images/ramena1.png"),
  TutorialDivider(),
  TutorialCard(name: "FT-325 - down pos.",goals:["15 times 40lbs","12 times 50lbs","8 times 60 lbs"],imageUrl:"lib/images/FT-325.png"),
  TutorialDivider(),
  TutorialCard(name: "Wall curls / Sit down",goals:["12 times 5kg","12 times 5klg"],imageUrl:"lib/images/wallCurls.png"),
  TutorialDivider(),
  TutorialCard(name: "FT-325 - top pos.",goals:["15 times 40lbs","14 times 50lbs","12 times 60 lbs"],imageUrl:"lib/images/FT-325.png"),
  TutorialDivider(),
  TutorialCard(name: "Close-grip Bench press",goals:["Warm-up 5kg","15 times 7.5kg","10 times 10kg"],imageUrl:"lib/images/close-grip.png"),
  TutorialDivider("Double exercise-repeat 3x",false),
  TutorialCard(name:"Push-ups",goals:["10 times"],imageUrl: "lib/images/pushUps.png",),
  TutorialDivider(),
  TutorialCard(name:"Tower - slanted bar",goals:["15 times 50lbs"],imageUrl: "lib/images/FT-325.png",),
  TutorialDivider("Congratulations you've done it!"),
    TutorialDivider("You can now rest!",false),
  ]),
  "Back/Breast":Tutorial("Back/Breast", [
  TutorialDivider("5 minut zahřátí kolo/pás"),
  TutorialDivider("Priprava 2,5 / 2 / 3 Kg",false),
  TutorialCard(name: "",goals: ["20 times"],imageUrl: "lib/images/BothcubanPress.jpg",),
  TutorialDivider(),
  TutorialCard(name:"Upazeni",goals: ["10 times"],imageUrl: "lib/images/teplomer.png",),
  TutorialDivider(),
  TutorialCard(name:"Teplomer",goals: ["20 times"],),
  TutorialDivider(),
  TutorialCard(name:"Pohyb dozadu",goals: ["10 times"],),
  TutorialDivider("Konec rozcvicky"),
  TutorialDivider("Střídat rovnou/šikmou lavičku",false),
  TutorialCard(name: "Bench press",goals: ["20 times 5kg","15 time 7.5kg","12 times 10kg","8 times 12.5kg"],imageUrl: "lib/images/benchPress.png",),
  TutorialDivider(),
  TutorialCard(name: "Tlaky na lavičce",goals: ["15 times 6kg","10 time 7kg","10 times 8kg"],imageUrl: "lib/images/tlaky.png",),
  TutorialDivider(),
  TutorialCard(name: "Chest press",goals: ["15 times 30lbs","15 time 40lbs","9+ times 50lbs + 30lbs 6x"],imageUrl: "lib/images/chest_press.jpg",),
  TutorialDivider(),
  TutorialCard(name: "Kliky smrt",goals: ["Kolik dovedu"],imageUrl: "lib/images/pushUps.png",),
  TutorialDivider(),
  TutorialCard(name: "Pull down",goals: ["15+ times 30lbs","15+ times 50lbs","15+ times 70lbs","15 times 90lbs"],imageUrl: "lib/images/pullDown.png",),
  TutorialDivider(),
  TutorialCard(name: "Row",goals: ["15 times 70lbs","15 times 90 lbs", "7 times 110lbs + 10x 90lbs"],imageUrl: "lib/images/row.jpg",),
  TutorialDivider(),
  TutorialCard(name: "Hyperextension",goals: ["10 times","10 times","10 times"],imageUrl: "lib/images/hyper.jpg",),
  TutorialDivider("Congratulations you've done it!"),
  TutorialDivider("You can now rest!",false),
  ]),
  "Legs/Arms": Tutorial("Legs/Arms", [
  ])
};