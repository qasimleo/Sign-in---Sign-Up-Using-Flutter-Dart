import 'package:flutter/material.dart';
import 'package:loginuicolors/login.dart';
import 'package:loginuicolors/register.dart';
import 'package:loginuicolors/splash.dart';
import 'package:loginuicolors/snackbar.dart';
import "package:loginuicolors/alertdialog.dart";
import "package:loginuicolors/assign01.dart";
import "package:loginuicolors/Tabbar.dart";

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'splash': (context) => SplashScreen(),
      'snackbar': (context) => snackbar(),
      'alertdialog': (context) => alertdia(),
      'assign01': (context) => assignment(),
      'Tabbar': (context) => MyTabbedPage(),
    },
  ));
}
