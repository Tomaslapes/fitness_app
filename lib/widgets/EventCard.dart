import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';

class EventCard extends StatelessWidget {
  @override
  Event event;
  EventCard(this.event);
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            event.icon,
          SizedBox(width: 10,),
          Text(event.title,
          style: TextStyle(
              fontFamily: "Open-sans-normal",
              fontSize: 20
          )),
          ],
        )),
            decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(23)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 8,
                spreadRadius: 2,
                color: Colors.black.withOpacity(0.25)
            )
          ])
    );
  }
}
