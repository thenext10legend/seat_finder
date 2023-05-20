// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:seat_finder/search_bar/search_button.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  TextEditingController seatNum = TextEditingController();
  bool active = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: 2,
      onTap: () {
        active = true;
      },
      controller: seatNum,
      decoration: InputDecoration(
        suffixIcon: SearchButton(active),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 3,
            color: Colors.lightBlueAccent,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 3,
            color: Colors.lightBlueAccent,
          ),
        ),
        hintText: "Enter Seat Number...",
        hintStyle: TextStyle(
          color: Colors.lightBlueAccent,
        ),
      ),
    );
  }
}
