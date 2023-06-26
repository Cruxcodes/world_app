import 'package:flutter/material.dart';
import 'package:world_app/pages/choose_location.dart';
import 'package:world_app/pages/home.dart';
import 'package:world_app/pages/loading.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Loading_Page(),
        '/home': (context) => Home(),
        '/choose_location': (context) => ChooseLocation(),
      },
    ),
  );
}
