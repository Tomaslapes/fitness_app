import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fitness_app/pages/home.dart';
import 'package:fitness_app/pages/Diary.dart';
import "package:fitness_app/pages/Calendar.dart";

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  int _currentIndex = 0;

  void changeIndex(int index){
    this._currentIndex = index;
  }
  List<Widget> tabs = [];

  _MainPageState(){
    tabs = [
      home((){
        setState(() {
          changeIndex(1);
        });
      }),
      Diary(),
      Calendar()
    ];
  }


  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Color.fromARGB(255,255,207 , 33),
        backgroundColor: Colors.white,
        items:[BottomNavigationBarItem(
            icon: Icon(Icons.home,
              size: 40,),
            title: SizedBox.shrink()),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up,
              size: 40,),
            title: SizedBox.shrink(),),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today,
                size: 40,),
              title: SizedBox.shrink()),
        ],
        onTap:(changed){
          print(changed);
          setState(() {
            changeIndex(changed);
          });
        },),
    );
  }
}
