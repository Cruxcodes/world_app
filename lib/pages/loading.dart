import 'package:flutter/material.dart';

class Loading_Page extends StatefulWidget {
  const Loading_Page({Key? key}) : super(key: key);

  @override
  State<Loading_Page> createState() => _Loading_PageState();
}

class _Loading_PageState extends State<Loading_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('this is the loading screen'),
    );
  }
}
