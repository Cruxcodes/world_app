import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;



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
      body: ElevatedButton(
        onPressed: (){
          setState(() {
            counter++;
          });
        },
        child: Text('$counter'),
      ) ,
    );
  }
}
