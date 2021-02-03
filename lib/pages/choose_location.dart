import 'package:Shopping/pages/services/world_time.dart';
import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List <WorldTime> locations=[
    WorldTime(location: 'Nairobi', flag: 'Nairobi.png', url: 'Africa/Nairobi'),
    WorldTime(location: 'Accra', flag: 'Accra.png', url: 'Africa/Accra'),
    WorldTime(location: 'Juba', flag: 'Juba.png', url: 'Africa/Juba'),
    WorldTime(location: 'Havana', flag: 'Havana.png', url: 'America/Havana'),
    WorldTime(location: 'Indiana', flag: 'Indiana.png', url: 'America/Indiana/Indianapolis'),
    WorldTime(location: 'Kolkata', flag: 'Kolkata.png', url: 'Asia/Kolkata'),
    WorldTime(location: 'Macau', flag: 'Macau.png', url: 'Asia/Macau'),
    WorldTime(location: 'London', flag: 'London.png', url: 'Europe/London'),
    WorldTime(location: 'Sofia', flag: 'Sofia.png', url: 'Europe/Sofia'),

  ];

  void updatTime(index) async{
     WorldTime instance=locations[index];
     await instance.getTime();
     Navigator.pop(context, {
       'location': instance.location,
       'flag': instance.flag,
       'time': instance.time,
       'isDayTime': instance.isDayTime
     });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Choose Location"),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder:(context, index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: (){
                    updatTime(index);
                  },
                  title: Text(locations[index].location),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/${locations[index].flag}'),
                  ),
                ),
              ),
            );
          } ,
      )
    );
  }
}
