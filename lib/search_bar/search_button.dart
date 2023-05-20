// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  SearchButton(this.active);

  bool active;
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.all(15),
        ),
        backgroundColor: MaterialStateProperty.all(
          active ? Colors.lightBlueAccent : Colors.grey,
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      icon: Icon(
        Icons.search,
        color: Colors.white,
      ),
      label: Text(
        "Find",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      onPressed: () {},
    );
  }
}
