import 'package:advance_exam/screen/%20pattern/patterm_screen.dart';
import 'package:advance_exam/screen/corona/view/corona_screen.dart';
import 'package:advance_exam/screen/todo/provider/todo_provider.dart';
import 'package:advance_exam/screen/todo/view/insert_update/insert_screnn.dart';
import 'package:advance_exam/screen/todo/view/login_screen/login_screen.dart';
import 'package:advance_exam/screen/todo/view/singin_screen/singin_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screen/ pattern/pattern_provider.dart';
import 'screen/corona/provider/corona_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => Corona_Provider(),
        ), ChangeNotifierProvider(
          create: (context) => Pettren_provier(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // initialRoute: 'Todo',
        routes: {
          // '/': (context) => Login_Screen(),
          // 'sing': (context) => Singin_Screen(),
          // 'Todo': (context) => Insert_screen(),
          // '/': (context) => HomeScreen(),
          '/':(context) => Pettern_screen(),
        },
      ),
    ),
  );
}
