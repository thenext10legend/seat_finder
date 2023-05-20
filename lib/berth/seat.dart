// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:seat_finder/models/seat_model.dart';

class Seat extends StatelessWidget {
  int index;
  Seat(this.index);

  @override
  Widget build(BuildContext context) {
    List seatType = ["LOWER", "MIDDLE", "UPPER", "SIDE LOWER", "SIDE UPPER"];
    List<SeatModel> seats = [];
    for (int i = 1; i <= 64; i++) {
      seats.add(
        SeatModel(seatNum: i, seatType: seatType[0]),
      );
    }
    if (index == 1)
      return Seat1(context);
    else if (index == 2) return Seat2(context);
    return Card();
  }

  String order(int index) {
    String berth = "";
    if (index % 8 == 1)
      berth = "LOWER";
    else if (index % 8 == 2)
      berth = "MIDDLE";
    else if (index % 8 == 3) berth = "UPPER";
    return berth;
  }

  Stack Seat1(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          color: Colors.lightBlueAccent,
          width: MediaQuery.of(context).size.width / 7,
          height: MediaQuery.of(context).size.height / 11,
        ),
        Wrap(
          direction: Axis.vertical,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 10,
          children: [
            Text(
              "$index",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              order(index),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Stack Seat2(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          color: Colors.lightBlueAccent,
          width: MediaQuery.of(context).size.width / 7,
          height: MediaQuery.of(context).size.height / 11,
        ),
        Wrap(
          direction: Axis.vertical,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 10,
          children: [
            Text(
              order(index),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              "$index",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }

  // Widget seats(BuildContext context, int index) {
  //   return ListView.builder(
  //       scrollDirection: Axis.horizontal,
  //       itemCount: 3,
  //       itemBuilder: (context, index) {
  //         return ListTile(
  //           title: Text("$index"),
  //           subtitle: Text(order(index)),
  //         );
  //       });
  // }
}
