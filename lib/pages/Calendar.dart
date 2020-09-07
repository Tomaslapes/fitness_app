import 'package:fitness_app/scopedModels/CalendarScoped.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:fitness_app/widgets/EventCard.dart';



class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {

  @override
  DateTime currentDate =DateTime.now();
  List<DateTime> myEvents = [
    DateTime(2020,08,27),
    DateTime(2020,08,24),
  ];

  initState(){

  }

  List<Event> currentEvents = [];

  final CalendarData scopedCalendar = CalendarData();


  Widget build(BuildContext context) {
    return ScopedModel(
      model: scopedCalendar,
      child: Scaffold(
        appBar: AppBar(title: Text("Calendar"),),
        body: ScopedModelDescendant<CalendarData>(
          builder: (context,child,model){
            model.getData();
            return(Column(
              children: [
                Expanded(
                  child: CalendarCarousel(
                    onCalendarChanged: (date){print("Changed");},
                    onDayPressed: (date,events){
                      print("Hello ${date} ");
                      setState(() {
                        currentDate = date;
                        currentEvents = events;
                      });;
                    },
                    selectedDateTime: currentDate,
                    onDayLongPressed: (day){
                      setState(() {
                        //model.markedDateMap.add(day, model.testEvent);
                        model.addEvent(day);
                      });
                    },
                    todayButtonColor: Colors.orange,
                    todayTextStyle: TextStyle(fontSize: 22),
                    markedDatesMap: model.markedDateMap,
                    daysTextStyle: TextStyle(
                      fontSize: 19,
                      color: Colors.black,
                      fontFamily: "Open-sans-normal"
                    ),
                    selectedDayTextStyle: TextStyle(
                        fontSize: 22,
                        color: Colors.grey[800],
                        fontFamily: "Open-sans-normal"
                    ),
                    selectedDayButtonColor: Color.fromARGB(255,255,207 , 33),
                  ),
                  flex: 3,
                ),
                Center(
                  child: Text("Events on:",
                    style:TextStyle(
                        fontFamily: "Open-sans-normal",
                        fontSize: 20
                    )),
                ),
                Center(
                  child: Text("${currentDate.day}.${currentDate.month}.${currentDate.year}",
                  style: TextStyle(
                    fontFamily: "Open-sans-normal",
                    fontSize: 25
                  ),),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(itemBuilder: (context,index){
                      print(currentEvents.length);
                      return(EventCard(currentEvents[index]));
                    },
                      itemCount: currentEvents.length,),
                  ),
                )
              ],
            ));
          },
        ),
        backgroundColor: Colors.white60,
      ),
    );
  }
}
