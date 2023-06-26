import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:world_app/services/world_time.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    dynamic data = ModalRoute.of(context)!.settings.arguments;
    print(data);
    return Scaffold(
      body: SafeArea(
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
              height: 20.0,
            ),
            Text(data['location']),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      data['time'],
                      style: const TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
