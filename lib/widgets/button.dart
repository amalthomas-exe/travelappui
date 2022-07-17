import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  bool? isResponsive;
  double? width;

  Button(
    {Key? key,
    this.isResponsive,
    this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF5d69b3)
      ),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('img/button-one.png'),
        ],
      ),
    );
  }
}