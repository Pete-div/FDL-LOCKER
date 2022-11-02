
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback? onpressed;
  Button({required this.text,required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 46, right: 53),
      child: GestureDetector
      (onTap: onpressed,
        child: Container(
          padding: EdgeInsets.only(bottom: 14, top: 12, left: 28, right: 28),
          child: Container(
              child: Center(
                  child: Text(
            text,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ))),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              width: 1,
              color: Color.fromRGBO(99, 98, 94, 1),
            ),
          ),
        ),
      ),
    );
  }
}
