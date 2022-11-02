import 'package:facl_locker_room/components/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PositionContainer extends StatelessWidget {
  final String text;
  PositionContainer({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 128,
      height: 20,
      decoration: BoxDecoration(
          color: Color.fromRGBO(118, 48, 119, 1),
          borderRadius: BorderRadius.circular(25)),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
          color: circleColor,
          fontSize: 11,
          fontWeight: FontWeight.w500,
        ),
      )),
    );
  }
}
