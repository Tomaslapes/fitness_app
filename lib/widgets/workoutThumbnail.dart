import 'package:fitness_app/pages/WorkoutScreen.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/models/WorkoutModel.dart';

class WorkoutThumbnail extends StatelessWidget {
  Workout workoutData;
  WorkoutThumbnail(this.workoutData);
  @override
  Widget build(BuildContext context) {
    return (
    Container(
      child:Column(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_){return(WorkoutScreen(workoutData: workoutData,));}));
            },
            child: Container(
              child: Stack(
                children: [
                  Container(
                    width: 180,
                    height: 220,
                  ),
                  Positioned(
                    child: Container(
                      height: 80,
                      width: 190,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(23)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 8,
                                spreadRadius: 2,
                              color: Colors.black.withOpacity(0.5)
                            )
                          ]),

                      child:Padding(
                        padding: const EdgeInsets.fromLTRB(0, 23, 0, 0),
                        child: Column(
                          children: [Text(workoutData.name,
                          style: TextStyle(fontSize: 22,fontWeight: FontWeight.w300,fontFamily: "Open-sans-light"),),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Row(
                              children: [
                                Text(workoutData.bodyParts[0],
                                style: TextStyle(
                                  fontFamily: "Open-sans-light",
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 255, 117, 33),
                                  fontWeight: FontWeight.bold
                                ),),
                                Icon(Icons.arrow_forward_ios,size: 15,),
                                Text(workoutData.bodyParts[1],
                                style: TextStyle(
                                    fontFamily: "Open-sans-light",
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 255, 117, 33),
                                    fontWeight: FontWeight.bold
                                ),),
                                Icon(Icons.arrow_forward_ios,size: 15,),
                                Text(workoutData.bodyParts[2],
                                style: TextStyle(
                                    fontFamily: "Open-sans-light",
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 255, 117, 33),
                                    fontWeight: FontWeight.bold
                                ),),
                              ],

                            ),
                          )],
                        ),
                      ),
                    ),
                    top: 135,
                  ),
                  Positioned(
                      child: Container(
                        height: 160,
                        width: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(23)),
                          color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 6,
                                  spreadRadius: 1.5,
                                  color: Colors.black.withOpacity(0.4)
                              )
                            ]),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(23),
                          child: Image.asset(workoutData.image.assetName,
                          fit: BoxFit.cover,
                          ),
                        ),
                        ),
                    left: 15,
                  ),

                ],
                overflow: Overflow.visible,
              ),
            ),
          )
        ],
      ),
    )
    );
  }
}
