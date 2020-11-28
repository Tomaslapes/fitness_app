import 'package:scoped_model/scoped_model.dart';
import 'package:mysql1/mysql1.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/loginInfo.dart';

class CalendarData extends Model{
  bool dataLoaded = false;

  EventList<Event> markedDateMap = EventList<Event>(
      events: {}
  );

  Event testEvent = Event(
    date: DateTime(2020,08,27),
    title: "Cvičení",
    icon: Icon(Icons.fitness_center),
  );

  Future<Results> connectToDB(String sqlCommand) async{
    final connection = await MySqlConnection.connect(new ConnectionSettings(
      host: host,
      port: port,
      user: user,
      password: password,
      db: db,
    ));
    var results = await connection.query(sqlCommand);
    print(results.runtimeType);

    await connection.close();

    return results;
  }

  void getData()async{
    if(!dataLoaded){
      Results results = await connectToDB("SELECT * FROM workoutDates");
      for (var row in results){
        //print(row["eventName"]);
        List<Event> eventList = [testEvent];
        print(row["date"].toString());
        List<String> _dateLst1 = row["date"].toString().split(" ");
        List<String> _dateLst = _dateLst1[0].toString().split("-");
        //print("${_dateLst[1]}");
        int year = int.parse(_dateLst[0]);//int.parse(row["eventName"].toString().substring(0,4));
        int month = int.parse(_dateLst[1]);//int.parse(row["eventName"].toString().substring(4,6));
        int day = int.parse(_dateLst[2]);
        print("$year,$month");
        markedDateMap.add(DateTime(year,month,day), testEvent);
      }
      dataLoaded = true;
    }

    notifyListeners();
  }

  void addEvent(DateTime date) async{
    Results res = await connectToDB("INSERT INTO `workoutDates`(`eventName`, `date`) VALUES ('TestEvent','${date.year}-${date.month}-${date.day}')");
    print("event added succesfully");
    for (var row in res){
      print(row);
    }

    markedDateMap.add(date, testEvent);
    notifyListeners();
  }

}