import 'dart:convert';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
class WorldTime {
  late String? location; //location name
  late String? time; //time in location
  late String? flag; //flag url
  late String? urlPath;
  late bool isDayTime;

  WorldTime({this.location, this.time, this.flag, this.urlPath});


  Future<void> getTime() async {
    var url = Uri.https('worldtimeapi.org', '/api/timezone/$urlPath');
    try{
      Response response = await get(url);
      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
        String dateTime = jsonResponse['utc_datetime'];
        String offset = jsonResponse['utc_offset'].substring(1, 3);

        DateTime now = DateTime.parse(dateTime);
        //The .add is non destrcutive, which means it doesn't directly update it
        now = now.add(Duration(hours: int.parse(offset)));

        isDayTime = now.hour > 6 && now.hour < 20;

        time = DateFormat.jm().format(now);

      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
    }catch(ex){
      time = ex.toString();
    }

  }
}
