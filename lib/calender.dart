import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:SKS_Matka/Shared/constant.dart';

class Calender extends StatefulWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  _CalenderState createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(image: Images.bgImage, fit: BoxFit.cover)),
          child: Center(child: _calendarBox(screenSize))),
    );
  }

  Container _calendarBox(Size screenSize) {
    return Container(
      height: screenSize.height / 2.7,
      width: screenSize.width,
      child: ClipRRect(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50.0)),
        child: Container(
          padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50.0),
              bottomLeft: Radius.circular(50.0),
            ),
          ),
          child: CalendarCarousel(
            childAspectRatio: 1.9,
            weekdayTextStyle: TextStyle(color: Colors.black),
            todayButtonColor: Colors.transparent,
            selectedDateTime: selectedDate,
            onDayPressed: (dateTime, d) {
              setState(() {
                selectedDate = dateTime;
              });
            },
            todayTextStyle: TextStyle(color: Colors.black),
            weekendTextStyle: TextStyle(color: Colors.black),
            showOnlyCurrentMonthDate: true,
            headerTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
            headerMargin: EdgeInsets.all(8),
          ),
        ),
      ),
    );
  }
}
