import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/widgets/fav_workout.dart';
import 'package:fitness_app/widgets/DiaryButton.dart';


class home extends StatelessWidget {
  List<String> screens =["/","/diary","/favorites"];
  Function setFunc;
  home([this.setFunc]);
  @override
  Color myYellow = Color.fromARGB(255,255,207 , 33);
  Widget build(BuildContext context) {
    return (Scaffold(
        body: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset("lib/assets/top.png"),
                  Positioned(child:Text("Hello Tom!",
                    style: TextStyle(
                      fontSize: 45,
                      //fontWeight: FontWeight.w700,
                      fontFamily: "Open-Sans",//"Noto-Sans-ItalicBold",
                      letterSpacing: -1,
                      //"lib/assets/open-sans/OpenSans-BoldItalic.tff"
                    ),),
                    left: 35,
                    top: 50,),
                  Positioned(child:Text("Let's workout!",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w300,
                      fontFamily: "Open-sans-normal",

                    ),),
                    left: 35,
                    top: 100,),
                  Positioned(child: Column(
                    children: [Icon(Icons.account_circle,
                      color: Colors.white,
                      size: 50,),
                      Row(
                        children: [
                          Icon(Icons.trending_up,
                            color: Colors.white,),
                          SizedBox(width: 10,),
                          Text("3 day\nstreak!",
                            style: TextStyle(
                                color: Colors.orange,
                                fontSize: 18
                            ),)
                        ],
                      )],
                    crossAxisAlignment: CrossAxisAlignment.end,
                  ),

                    right: 5,
                    top: 65,)

                ],
              ),
              SizedBox(height: 12,),
              FavoriteWorkouts(),
              DiaryButton(this.setFunc),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ),
        backgroundColor: Colors.grey[800],

      ));
  }
}
