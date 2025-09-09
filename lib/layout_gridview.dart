import 'package:flutter/material.dart';

class LayoutGridview extends StatelessWidget {
  const LayoutGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cotoh GridView')),
      // Body menampilkan daftar item dalam dua kolom menggunakam GridView.count
      body: GridView.count(
        crossAxisCount: 2,//Jumlah kolom:2
        children: List.generate(6,(index){
          return Center(
            child: Text('Item $index',style: TextStyle(fontSize: 20)),
          );
        }),
      ),
    );
  }
}