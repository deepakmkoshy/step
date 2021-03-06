import 'package:flutter/material.dart';

const bigtextstyle = TextStyle(
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
  letterSpacing: 1.0,
);

const commontextstyle = TextStyle(
  fontSize: 17.0,
  fontWeight: FontWeight.w100,
  letterSpacing: 0.5,
);

const commontextstylewhite = TextStyle(fontSize: 17.0, fontWeight: FontWeight.w100, letterSpacing: 0.5, color: Colors.white);

//RichText, Commonly used in add class in lib/teacher/create_class_by...

final teacherRichTextStyle = TextStyle(
  color: Colors.cyan[600],
  fontFamily: 'LexendDeca',
  fontSize: 20,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.5,
);

final theRedStarAboveName = <TextSpan>[
  TextSpan(
    text: '*',
    style: TextStyle(
      color: Colors.red,
      fontSize: 25,
    ),
  ),
];
