import 'package:fitness_app/widgets/workoutThumbnail.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/models/Workouts.dart';


class FavoriteWorkouts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        return(Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text("Your favorite workouts:",
                  style: TextStyle(
                    color:Colors.white,
                    fontSize: 18,
                    fontFamily: "Open-sans-normal",
                  ),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
                child: Container(
                  height: 3,
                  width: 235,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Color.fromARGB(255,255,207 , 33),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 235,
                child: ListView.builder(itemBuilder: (context,index){
                  return(Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: (WorkoutThumbnail(favWorkouts[index])),
                  ));},
                  itemCount: favWorkouts.length,
                scrollDirection: Axis.horizontal,),
              )
            ],
            crossAxisAlignment: CrossAxisAlignment.start
        ));
      }
  }
