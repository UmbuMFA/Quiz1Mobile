import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Input extends StatelessWidget {
  const Input({
    Key key,
    @required this.etInput,
    // this.pInput,
    // this.lInput,
    // this.tinput,
  }) : super(key: key);

  final TextEditingController etInput;
  // final TextEditingController pInput;
  // final TextEditingController lInput;
  // final TextEditingController tinput;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
            decoration: InputDecoration(hintText: "Masukkan Panjang"),
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            controller: etInput,
            keyboardType: TextInputType.number,
          );
       
  }
}
