import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login_challage/fix_login.dart';
import 'package:login_challage/last_login.dart';
import 'package:login_challage/login.dart';
import 'package:login_challage/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   home: MainLogin());
  }
}
