import 'package:fitness_app/pages/WorkoutGuide.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/models/WorkoutModel.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:fitness_app/models/WorkoutTutorials.dart';

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
      backgroundColor: Colors.grey[200],
      body:Container(child:
        Column(
          children: [
            Stack(
              children: [
                Container(
                  height:MediaQuery.of(context).size.height ,
                  width: MediaQuery.of(context).size.width,
                ),
                Container( //Main Image
                height: MediaQuery.of(context).size.width*0.85,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(42)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 6,
                          spreadRadius: 1.5,
                          color: Colors.black.withOpacity(0.4)
                      )
                    ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(42),
                  child: Image.asset(workoutData.image.assetName,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
                Positioned( // Back button
                    child:Container(
                      width: MediaQuery.of(context).size.width*0.95,
                      child: Row(
                        children: [
                          GestureDetector(
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
                          Container(
                            child: Row(
                              children: [
                                SizedBox(width: 1,),
                                Icon(Icons.watch_later,color: Colors.white,size: 38,),
                                Text("${workoutData.minDuration.toString()} min",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18
                                ),),
                                SizedBox(width: 1,),
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(23)),
                                color: Color.fromARGB(120, 0, 0, 0),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 8,
                                      spreadRadius: 2,
                                      color: Colors.black.withOpacity(0.2)
                                  )
                                ]),
                            width: 110,
                            height: 45,
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                    ),
                top: 35,
                left: 10,),
                Positioned(
                    child: Container( // Details panel
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Text(workoutData.name,
                          style: TextStyle(
                            fontFamily: "Open-Sans-light",
                            fontSize: 38,
                            fontWeight: FontWeight.w400,
                              letterSpacing: 1.5
                          ),),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              children: [
                                Text(workoutData.bodyParts[0],
                                  style: TextStyle(
                                      fontFamily: "Open-sans-normal",
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 255, 117, 33),
                                      fontWeight: FontWeight.bold
                                  ),),
                                Icon(Icons.arrow_forward_ios),
                                Text(workoutData.bodyParts[1],
                                  style: TextStyle(
                                      fontFamily: "Open-sans-normal",
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 255, 117, 33),
                                      fontWeight: FontWeight.bold
                                  ),),
                                Icon(Icons.arrow_forward_ios),
                                Text(workoutData.bodyParts[2],
                                  style: TextStyle(
                                      fontFamily: "Open-sans-normal",
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 255, 117, 33),
                                      fontWeight: FontWeight.bold
                                  ),),
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                            ),
                          ),
                          Text("Difficulty",
                          style:TextStyle(
                              fontFamily: "Open-Sans-light",
                              fontSize: 23,
                              fontWeight: FontWeight.w400,
                            letterSpacing: 1.5
                          ),),
                         SizedBox(height: 5,),
                         Row(
                           children: [
                             LinearPercentIndicator(
                               width: 200,
                               lineHeight: 10,
                               percent: workoutData.difficulty,
                               //progressColor: Color.fromARGB(255, 255, 117, 33),
                               linearGradient: workoutData.difficulty > 0.5 ? LinearGradient(colors: [
                                 Colors.lightGreen,
                                 Color.fromARGB(255, 255, 117, 33),
                               ]):LinearGradient(colors: [
                                 Colors.lightGreen,
                                 Colors.lightGreenAccent,
                               ],
                               ),
                             )
                           ],
                           mainAxisAlignment: MainAxisAlignment.center,
                         ),
                          Text(workoutData.strDiff,
                          style: TextStyle(
                              fontFamily: "Open-Sans-normal",
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1.5
                          ),)
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(42)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 6,
                                spreadRadius: 1.5,
                                color: Colors.black.withOpacity(0.4)
                            )
                          ]),
                      width: MediaQuery.of(context).size.width*.8,
                      height: 180,
                    ),
                  left: MediaQuery.of(context).size.width/2- MediaQuery.of(context).size.width*.8/2,
                  top: MediaQuery.of(context).size.width/2+50
                ),
                Positioned(child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Image.asset(workoutData.leftImageUrl,
                      scale: 2.8,),
                      Image.asset(workoutData.rightImageUrl,
                          scale: 2.8)
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                ),
                top: MediaQuery.of(context).size.height/16*7,),
                // START Button
                Positioned(
                    child: RaisedButton(
                      onPressed: (){
                        print("Start ${workoutData.name}");
                        Navigator.push(context, MaterialPageRoute(builder: (_){return(WorkoutGuide(tutorials[workoutData.name]));}));
                        },
                    shape:RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(30)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("START",
                      style: TextStyle(
                          fontFamily: "Open-Sans-semiBold",
                          fontSize: 35,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.5,
                        color: Colors.white
                      ),),
                    ),
                    color: Color.fromARGB(255,255,207 , 33),),

                left: MediaQuery.of(context).size.width/2-80,
                top: MediaQuery.of(context).size.height/16*13,)
      ],
              overflow: Overflow.visible,
              clipBehavior: Clip.none,
            )
          ],
        ),),
    );
  }
}
