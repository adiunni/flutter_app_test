import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {

  String location; //Location name for the UI
  String time; //Time in the location
  String flag; // url to an asset flag icon.
  String url ; //Location URL for API endpoint.
  bool isDayTime ;

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async{
    try{
      //make the request to the API.
      Response response =
          await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = json.decode(response.body);
      //print(data);

      //get properties from the data.
      String datetime = data['datetime'];
      String offset1 = data['utc_offset'].substring(1, 3);
      String offset2 = data['utc_offset'].substring(4, 6);
      //print(datetime);
      //print(offset1);
      //print(offset2);

      //Create the datetime object.
      DateTime now = DateTime.parse(datetime);
      now = now.add(
          Duration(hours: int.parse(offset1), minutes: int.parse(offset2)));

      //Convert the DateTime object into a string.
      isDayTime = now.hour > 7 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
    }
    catch(e){
      print('caught an error: $e');
      time = 'Could not get time data';
    }
  }
}
