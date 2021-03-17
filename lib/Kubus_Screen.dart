import 'package:flutter/material.dart';
import 'Hitung.dart';
import 'History.dart';
import 'Result.dart';
import 'InputPanjang.dart';



class Kubus extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<Kubus> {
TextEditingController pInput = new TextEditingController();
  // double _inputUser = 0;
  String _newValue = "Kubus";
  double _result = 0;
  double _pinput = 0;
  
  
  void _hitungVolume() {
    setState(() {
      _pinput = double.parse(pInput.text);
      if (_newValue == "Kubus")
        _result = _pinput * _pinput * _pinput;

        listViewItem.add("$_newValue : $_result");
    });
  }


// ignore: deprecated_member_use
List<String> listViewItem = List<String>();
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Kubus"),
          ),
          body : Container(
            margin: EdgeInsets.all(8),
            child: Column(
              children: [
                InputPanjang(pInput: pInput),
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