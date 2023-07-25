import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter_spinkit/flutter_spinkit.dart';


import 'package:world_app/services/world_time.dart';
import 'package:world_app/utilities/Colors.dart';

class Loading_Page extends StatefulWidget {
  const Loading_Page({Key? key}) : super(key: key);

  @override
  State<Loading_Page> createState() => _Loading_PageState();
}

class _Loading_PageState extends State<Loading_Page> {
  Future<void> setupWorldTime() async {
    WorldTime worldTime =
        WorldTime(location: 'Lagos in Africa', urlPath: 'Africa/Lagos');
    await worldTime.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': worldTime.location,
      'time': worldTime.time,
      'isDaytime' : worldTime.isDayTime,
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    const spinkit = SpinKitWanderingCubes(
      color: Colors.blue,
      size: 100.0,
    );

    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: spinkit,
        ),
      ),
    );
  }
}
