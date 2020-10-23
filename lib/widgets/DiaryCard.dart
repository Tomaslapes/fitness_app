import 'package:fitness_app/models/DiaryEntry.dart';
import 'package:flutter/material.dart';

class DiaryCard extends StatelessWidget {
  @override
  DiaryEntry entryInfo;
  DiaryCard(this.entryInfo);

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
            child: Container(
              child: Text("${entryInfo.dayOfWeek} - ${entryInfo.date.day}.${entryInfo.date.month}.${entryInfo.date.year}",
              style: TextStyle(
                fontFamily: "Open-sans-normal",
                color: Colors.white,
                fontSize: 22
              ),),
              alignment: Alignment.topLeft,
            ),
          ),
          Stack(
            children: [
              Image.asset("lib/images/DiaryTab.png"),
              Positioned(child: Text("${entryInfo.name}",
              style: TextStyle(
                  fontFamily: "Open-sans-semiBold",
                  color: Colors.white,
                  fontSize: 35
              ),),
              left: 20,
              top: 8,),
              Positioned(child: Text("${entryInfo.text}",
                style: TextStyle(
                    fontFamily: "Open-sans-normal",
                    color: Colors.white,
                    fontSize: 20
                ),
              overflow: TextOverflow.clip,),
                left: 150,
                top: 45,),
              Positioned(
                  child: Icon(Icons.access_time,color: Colors.white,size: 40,),
              top: 55,
              left: 14,),
              Positioned(child: Text("${entryInfo.duration}",
                style: TextStyle(
                    fontFamily: "Open-sans-normal",
                    color: Colors.white,
                    fontSize: 22
                ),
                overflow: TextOverflow.clip,),
                left: 60,
                top: 58,),
            ],
          )
        ],
      ),
      height: 175,
      width: MediaQuery.of(context).size.width*.95,
    );
  }
}
