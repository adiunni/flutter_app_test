import 'package:flutter/material.dart';
import 'package:world_clock/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London',location: 'London',flag: 'uk.png'),
    WorldTime(url: 'Africa/Cairo',location: 'Cairo',flag: 'egypt.png'),
    WorldTime(url: 'Asia/Tokyo',location: 'Tokyo',flag: 'japan.png'),
    WorldTime(url: 'Asia/Kuala_Lumpur',location: 'Kuala Lumpur',flag: ',malaysia.png'),
    WorldTime(url: 'Asia/Hong_Kong',location: 'Hong Kong',flag: 'hongkong.png'),
    WorldTime(url: 'America/New_York',location: 'New York',flag: 'usa.png'),
    WorldTime(url: 'Asia/Kolkata',location: 'Kolkata',flag: 'india.png'),
  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();

    // navigate to homescreen
    Navigator.pop(context, {
      'location':instance.location,
      'flag':instance.flag,
      'time':instance.time,
      'isDayTime':instance.isDayTime,
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build function ran');
    return Scaffold(
      backgroundColor: Colors.blue ,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                    print(locations[index].location);
                    updateTime(index);
                  },
                  title: Text(locations[index].location),
                  leading: CircleAvatar(
                    backgroundColor: Colors.red,
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}
