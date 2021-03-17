import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({
    Key key,
    @required this.listViewItem,
  }) : super(key: key);

  final List<String> listViewItem;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listViewItem.map((String value) {
        return Container(
         
          child :Material(
            color: Colors.white,
            elevation: 14.0,
            borderRadius: BorderRadius.circular(24.0),
            shadowColor: Color(0x802196F3),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            
              children: <Widget>[
              Container(
                child: Text(
              value,
              style: TextStyle(fontSize: 15,),
          )
              ),
            ],
            )
          )
        );
          
        
      }).toList(),
    );
  }
}