import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputLebar extends StatelessWidget {
  
  const InputLebar({
    Key key,
    @required this.lInput,
  }) : super(key: key);

  final TextEditingController lInput;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
            decoration: InputDecoration(hintText: "Masukkan Lebar Dalam CM"),
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            controller: lInput,
            keyboardType: TextInputType.number,
          );
       
  }
}