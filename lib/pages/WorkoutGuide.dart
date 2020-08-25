import 'package:fitness_app/models/TutorialModel.dart';
import 'package:flutter/material.dart';

class WorkoutGuide extends StatefulWidget {
  @override
  Tutorial tutorial;
  WorkoutGuide(this.tutorial){
    
  }
  _WorkoutGuideState createState() => _WorkoutGuideState(this.tutorial);
}

class _WorkoutGuideState extends State<WorkoutGuide> {
  @override
  Tutorial tutorial;
  _WorkoutGuideState(this.tutorial);
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text(tutorial.name),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255,255,207 , 33),
      ),*/
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [SizedBox(height: 30,),
            /*GestureDetector(
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
            ),*/
            Flexible(
            child: ListView.builder(itemBuilder: (context,index){
              return tutorial.tutorialData[index];
            },
    itemCount: tutorial.tutorialData.length,
      ),
          ),
  ]),
    ),
      backgroundColor: Colors.grey[200],
      floatingActionButton: FloatingActionButton(onPressed: (){Navigator.pop(context);},
        elevation: 0,
        backgroundColor: Color.fromARGB(100, 0, 0, 0),
        child:Icon(Icons.arrow_back,color: Colors.white,size: 38,) ,
      mini: true,),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
    );
  }
}
