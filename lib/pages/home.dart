import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:world_app/services/world_time.dart';
import 'package:world_app/utilities/Colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    dynamic data = ModalRoute.of(context)!.settings.arguments;

    String bg_image = data['isDaytime'] ? "morning.jpg" : "night.jpg";
    Color bg_color = data['isDaytime'] ? Colors.white10 : Colors.black12;

    return Scaffold(
      backgroundColor: bg_color,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/$bg_image'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/choose_location');
                },
                icon: const Icon(
                  Icons.edit_location,
                  color: Colors.black54,
                ),
                label: const Text(
                  'Edit Location',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                ),
              ),
              SizedBox(
                height:20.0,
              ),
              Text(data['location']),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        data['time'],
                        style: const TextStyle(
                          color: slant_gray,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    // RichText(
                    //     text: TextSpan(
                    //   children: <TextSpan>[
                    //     TextSpan(
                    //       text: "This is a text",
                    //       style: TextStyle(
                    //         color: Colors.red,
                    //         fontSize: 18,
                    //         fontWeight: FontWeight.bold,
                    //       ),
                    //     ),
                    //     TextSpan(
                    //         text: "hi",
                    //         style: TextStyle(
                    //           color: grey,
                    //         )),
                    //   ],
                    // ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
