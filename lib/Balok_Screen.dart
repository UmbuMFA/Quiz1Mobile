import 'package:flutter/material.dart';
import 'Hitung.dart';
import 'History.dart';
import 'Result.dart';
import 'InputLebar.dart';
import 'InputPanjang.dart';
import 'InputTinggi.dart';


class Balok extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<Balok> {
TextEditingController tInput = new TextEditingController();
TextEditingController pInput = new TextEditingController();
TextEditingController lInput = new TextEditingController();

  // double _inputUser = 0;
  String _newValue = "Balok";
  double _result = 0;
  double _pinput = 0;
  double _linput = 0;
  double _tinput = 0;

  void _hitungVolume() {
    setState(() {

      _pinput = double.parse(pInput.text);
      _linput = double.parse(lInput.text);
      _tinput = double.parse(tInput.text);
    
    
      _result = _pinput * _tinput * _linput;
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
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Balok"),
          ),
          body : Container(
            margin: EdgeInsets.all(8),
            child: Column(
              children: [
                InputPanjang(pInput: pInput),
                InputLebar(lInput: lInput),
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