import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputPanjang extends StatelessWidget {
  
  const InputPanjang({
    Key key,
    @required this.pInput,
  }) : super(key: key);

  final TextEditingController pInput;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
            decoration: InputDecoration(hintText: "Masukkan Panjang Dalam CM"),
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            controller: pInput,
            keyboardType: TextInputType.number,
          );
  }
}
