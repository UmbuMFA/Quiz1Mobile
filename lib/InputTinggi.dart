import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputTinggi extends StatelessWidget {
  
  const InputTinggi({
    Key key,
    @required this.tInput,
  }) : super(key: key);

  final TextEditingController tInput;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
            decoration: InputDecoration(hintText: "Masukkan Tinggi Dalam CM"),
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            controller: tInput,
            keyboardType: TextInputType.number,
          );
       
  }
}