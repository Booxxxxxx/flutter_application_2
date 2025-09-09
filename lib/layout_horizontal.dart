import 'package:flutter/material.dart';

class LayoutHorizontal extends StatelessWidget {
  const LayoutHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView Horizontal')),
      // body berisi ListView horizontal di dalam SizedBox dengan tnggi 150
      body: SizedBox(
        height: 150,
        child: ListView(
        scrollDirection: Axis.horizontal,//scroll ke sampng
        children: <Widget>[
          Container(width: 160, color: Colors.red),
          Container(width: 160, color: Colors.blue),
          Container(width: 160, color: Colors.green),
          Container(width: 160, color: Colors.yellow),
          Container(width: 160, color: Colors.orange),

        ],
        ),
      ),
    );
  }
}


  
