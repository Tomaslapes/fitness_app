import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/models/WorkoutModel.dart';

class WorkoutScreen extends StatefulWidget {

  final Workout workoutData;

  WorkoutScreen({this.workoutData});
  @override
  _WorkoutScreenState createState() => _WorkoutScreenState(this.workoutData);
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  @override
  final Workout workoutData;
  _WorkoutScreenState(this.workoutData);
  Widget build(BuildContext context) {
    return Scaffold(

      body:Container(child:
        Column(
          children: [
            Stack(
              children: [Container(
                height: MediaQuery.of(context).size.width,
                width: MediaQuery.of(context).size.width,
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
                Positioned(
                    child:GestureDetector(
                      onTap: (){Navigator.pop(context);},
                      child: Container(
                        child: Icon(Icons.arrow_back,color: Colors.white,size: 38,),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(23)),
                            color: Color.fromARGB(100, 0, 0, 0),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                  color: Colors.black.withOpacity(0.2)
                              )
                            ]),
                        width: 45,
                        height: 45,
                      ),
                    ),
                top: 35,
                left: 10,),

      ]
            )
          ],
        ),),
    );
  }
}
