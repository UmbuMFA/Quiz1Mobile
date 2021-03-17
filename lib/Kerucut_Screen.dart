import 'package:flutter/material.dart';
import 'Hitung.dart';
import 'History.dart';
import 'Result.dart';
import 'InputPanjang.dart';
import 'InputTinggi.dart';


class Kerucut extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<Kerucut> {
TextEditingController etInput = new TextEditingController();
TextEditingController tInput = new TextEditingController();
TextEditingController pInput = new TextEditingController();

  // double _inputUser = 0;
  String _newValue = "Kerucut";
  double _result = 0;
  double _pinput = 0;
  double _tinput = 0;

  void _hitungVolume() {
    setState(() {
      // _inputUser = double.parse(etInput.text);
      _pinput = double.parse(pInput.text);
      _tinput = double.parse(tInput.text);
     if (_newValue == "Kerucut")
        _result = ((((_pinput/2) * (_pinput/2))* 3.14) * _tinput) * (1/3);
        listViewItem.add("$_newValue : $_result");
    });
  }


// ignore: deprecated_member_use
List<String> listViewItem = List<String>();
  
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.grey,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Kerucut"),
          ),
        //   body: Center(
        // child: _widgetOptions.elementAt(_selectedIndex),
        // ),
          body : Container(
            margin: EdgeInsets.all(8),
            child: Column(
              children: [
                InputPanjang(pInput: pInput),
                InputTinggi(tInput: tInput),
                 Result(
                  result: _result,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Text(
                    "History Penghitungan",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Expanded(
                    child: History(listViewItem: listViewItem)),
                   
                Hitung(konvertHandler: _hitungVolume),
                    
              ],
            ),
          )
        ));
  }
  }