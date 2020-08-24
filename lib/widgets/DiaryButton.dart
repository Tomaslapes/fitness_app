import 'package:flutter/material.dart';

class DiaryButton extends StatelessWidget {
  @override
  Function setFunc;
  DiaryButton(this.setFunc);
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){print("Open Workout Diary");
      setFunc();},
      child: Container(
        child: Stack(
          children: [
            Image.asset("lib/images/workoutDiaryBG2.png",
            scale: 0.2,),
            Positioned(
                child: Text("Workout DIARY",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Noto-Sans-ItalicBold",
                  fontSize: 30
                ),),
              top: 22,
              left: 30,
            ),
            Positioned(
              child: Text("Here you can track your progress",
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 117,33),
                    fontFamily: "Noto-Sans-ItalicBold",
                    fontSize: 15
                ),),
              top: 58,
              left: 32,
            ),
          ],
        ),
      ),
    );
  }
}
