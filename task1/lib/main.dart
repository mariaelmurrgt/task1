import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';
import 'page4.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/page1',
  routes: {
    '/page1': (context) => Page1(),
    '/page2': (context) => Page2(),
    '/page3': (context) => Page3(),
    '/page4': (context) => Page4(),

  },
));









