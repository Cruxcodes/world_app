import 'package:flutter/material.dart';

import '../services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  List<WorldTime> locations = [
    WorldTime(location: 'London', urlPath: 'Europe/London'),
    WorldTime(location: 'Berlin', urlPath: 'Europe/London'),
    WorldTime(location: 'London', urlPath: 'Europe/London'),
    WorldTime(location: 'London', urlPath: 'Europe/London'),
    WorldTime(location: 'London', urlPath: 'Europe/London'),
    WorldTime(location: 'London', urlPath: 'Europe/London'),
  ];

  @override
  Widget build(BuildContext context) {
    print('initState finction ran');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Location page'),
        centerTitle: true,
        backgroundColor: Colors.grey,
        elevation: 0,
      ),
      backgroundColor: Colors.grey[200],
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {},
                title: Text(locations[index].location!),
              ),
            );
          }),
    );
  }
}
