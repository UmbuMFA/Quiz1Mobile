import 'package:flutter/material.dart';
import 'package:quiz1_volumebangun3d/Balok_Screen.dart';
import 'package:quiz1_volumebangun3d/Bola_Screen.dart';
import 'package:quiz1_volumebangun3d/Kerucut_Screen.dart';
import 'package:quiz1_volumebangun3d/Kubus_Screen.dart';
import 'package:quiz1_volumebangun3d/Tabung_Screen.dart';


void main() {
  runApp(MyApp());
}



class MyApp extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyApp> {



int _selectedIndex = 0;

 void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _widgetOptions = <Widget>[
    Balok(),
    Kubus(),
    Bola(),
    Tabung(),
    Kerucut(),
  ];
  
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Penghitungan Volume Bangun Ruang"),
          ),
          body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
        ),
          bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.business_rounded),
            label: 'Balok',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box_outline_blank_outlined),
            label: 'Kubus',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trip_origin_sharp),
            label: 'Bola',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.battery_unknown_outlined),
            label: 'Tabung',
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.device_hub_rounded),
            label: 'Kerucut',
            backgroundColor: Colors.grey,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
        ));
  }
  }
