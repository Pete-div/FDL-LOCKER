import 'package:facl_locker_room/components/theme.dart';
import 'package:flutter/material.dart';


class OnboardModel {

  String text;

  Color color;


  OnboardModel({
    required this.color,
    required this.text,
  
  });
}

List<OnboardModel> screens = <OnboardModel>[
  OnboardModel(
    text: "Version 0.0",
    color:circleColor
  ),
  OnboardModel(
  
    text: "Version 1.1",
    
    color: firstColor,
   
  ),
  OnboardModel(
    
    text: "Version 0.9",
    
    color:secondColor,
 
  ),
  
];
