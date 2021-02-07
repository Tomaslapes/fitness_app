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

  List<Event> currentEvents = [];

  final CalendarData scopedCalendar = CalendarData();


  Widget build(BuildContext context) {
    return ScopedModel(
      model: scopedCalendar,
      child: Scaffold(
       // appBar: AppBar(title: Text("Calendar"),backgroundColor: Color.fromARGB(255,255,207 , 33),),
        body: ScopedModelDescendant<CalendarData>(
          builder: (context,child,model){
            model.getData();
            return(Column(
              children: [
                Stack(
                  children: [
                    Image.asset("lib/assets/top.png"),
                    Positioned(child: Text(
                      "Calendar",
                      style: TextStyle(
                        fontSize: 45,
                        //fontWeight: FontWeight.w700,
                        fontFamily: "Open-Sans",//"Noto-Sans-ItalicBold",
                        letterSpacing: -1,
                        //"lib/assets/open-sans/OpenSans-BoldItalic.tff"
                      ),
                    textAlign: TextAlign.left,
                    ),
                      left: 25,
                      top: 60,
                    )
                  ],
                ),
                Expanded(
                  child: CalendarCarousel(
                    onCalendarChanged: (date){print("Changed");},
                    onDayPressed: (date,events){
                      print("Hello ${date} ");
                      setState(() {
                        currentDate = date;
                        currentEvents = events;
                      });
                    },
                    selectedDateTime: currentDate,
                    onDayLongPressed: (day){
                      setState(() {
                        //model.markedDateMap.add(day, model.testEvent);
                        model.addEvent(day);
                      });
                    },
                    todayButtonColor: Colors.orange,
                    iconColor: Color.fromARGB(255,255,207 , 33),
                    markedDateWidget: Container(
                        padding:EdgeInsets.only(top:15),
                        child: Icon(Icons.fitness_center,
                        color: Color.fromARGB(255,255,207 , 33),size: 22)),
                    todayTextStyle: TextStyle(fontSize: 22),
                    markedDatesMap: model.markedDateMap,
                    headerTextStyle: TextStyle(color: Color.fromARGB(255,255,207 , 33),fontSize: 20),
                    weekdayTextStyle: TextStyle(color: Colors.grey),
                    weekendTextStyle: TextStyle(color: Color.fromARGB(255,255,207 , 33),fontSize: 20),
                    daysTextStyle: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
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
                SizedBox(height: 10,),
                Center(
                  child: Text("Events on:",
                    style:TextStyle(
                        fontFamily: "Open-sans-normal",
                        fontSize: 20,
                      color: Color.fromARGB(255,255,207 , 33)
                    )),
                ),
                Center(
                  child: Text("${currentDate.day}.${currentDate.month}.${currentDate.year}",
                  style: TextStyle(
                    fontFamily: "Open-sans-normal",
                    fontSize: 25,
                    color: Colors.white
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
        backgroundColor: Colors.grey[800],
      ),
    );
  }
}
