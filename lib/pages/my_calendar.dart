import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class MyCalendar extends StatefulWidget {
  MyCalendar({Key key}) : super(key: key);

    static String routeName = '/my_calendar';

  @override
  _MyCalendarState createState() => _MyCalendarState();
}

class _MyCalendarState extends State<MyCalendar> {
  CalendarController controller = new CalendarController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kalender"),),
      body: SingleChildScrollView(child: Card(child: TableCalendar(calendarController: controller,),),)
    );
  }
}