// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_element, dead_code, curly_braces_in_flow_control_structures, must_be_immutable

import 'package:flutter/material.dart';
import 'package:seat_finder/berth/seat.dart';

class rows extends StatelessWidget {
  int index;
  rows(this.index);

  @override
  Widget build(BuildContext context) {
    if (index % 2 != 0)
      return Row1(context);
    else if (index % 2 == 0) return Row2(context);
    return Card();
  }
}

Row Row1(BuildContext context) {
  return Row(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: (MediaQuery.of(context).size.width * 3 / 7) + 12,
            decoration: BoxDecoration(
              //borderRadius: BorderRadius.circular(10),
              border: Border(
                top: BorderSide(
                  color: Colors.blueAccent,
                  width: 7,
                ),
              ),
            ),
          ),
          Wrap(
            spacing: 1,
            children: [
              Seat(1),
              Seat(1),
              Seat(1),
            ],
          ),
        ],
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 2 / 10,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.only(right: 10),
            width: (MediaQuery.of(context).size.width * 1 / 7) + 10,
            decoration: BoxDecoration(
              //borderRadius: BorderRadius.circular(10),
              border: Border(
                top: BorderSide(
                  color: Colors.blueAccent,
                  width: 7,
                ),
              ),
            ),
          ),
          Seat(1),
        ],
      ),
    ],
  );
}

Row Row2(BuildContext context) {
  return Row(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            spacing: 1,
            children: [
              Seat(2),
              Seat(2),
              Seat(2),
            ],
          ),
          Container(
            width: (MediaQuery.of(context).size.width * 3 / 7) + 12,
            decoration: BoxDecoration(
              //borderRadius: BorderRadius.circular(10),
              border: Border(
                top: BorderSide(
                  color: Colors.blueAccent,
                  width: 7,
                ),
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 2 / 10,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Seat(2),
          Container(
            padding: EdgeInsets.only(right: 10),
            width: (MediaQuery.of(context).size.width * 1 / 7) + 10,
            decoration: BoxDecoration(
              //borderRadius: BorderRadius.circular(10),
              border: Border(
                top: BorderSide(
                  color: Colors.blueAccent,
                  width: 7,
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
