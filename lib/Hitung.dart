import 'package:flutter/material.dart';

class Hitung extends StatelessWidget {
final Function konvertHandler;
Hitung({Key key, @required this.konvertHandler});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 420,
      height: 50,
      child: (
        // ignore: deprecated_member_use
        RaisedButton(
          onPressed: konvertHandler,
          color: Colors.black,
          textColor: Colors.white,
          child: const Text('Hitung Volume'),
        )
      ),
    );
  }
}