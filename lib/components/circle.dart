import 'package:facl_locker_room/components/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Circle extends StatelessWidget {

 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 88.0, top: 64, right: 88),
          child: Container(
            width: 235,
            height: 235,
            child: CircleAvatar(
              backgroundColor: circleColor,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image.asset('assets/Safe-3.png'),
              ),
            ),
          ),
        ),
                Container(
          child: Padding(
            padding: const EdgeInsets.only(top:10.0, bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Welcome to FACL locker room.',
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'Here you can save as much as you want for the raining ',
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  'days ahead.',
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
