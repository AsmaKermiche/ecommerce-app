import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final Color color;
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Alignment alignment;
  CustomText({@required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.alignment=Alignment.topLeft,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(text,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
