import 'package:flutter/material.dart';

class LayoutGabungan extends StatelessWidget {
  const LayoutGabungan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lst dan GridView'),
        backgroundColor: const Color.fromARGB(155, 0, 162, 255),
         ),
         body:  ListView(
          children: [
            Padding(padding: EdgeInsets.all(12),
            child: Text('Menu Alikai:', style: TextStyle(fontWeight: FontWeight.bold ),
            )),
            ListTile(leading: Icon(Icons.map), title: Text('MAP')),
            ListTile(leading: Icon(Icons.photo), title: Text('Album')),
            ListTile(leading: Icon(Icons.phone), title: Text('Phone')),

            Padding(padding:  EdgeInsets.all(12),
            child: Text('Album:',style: TextStyle(fontWeight:FontWeight.bold))),

            SizedBox(height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children:<Widget> [
                 SizedBox(width: 10),
                Image.asset('image/GABUNG.jpg',width: 150, fit: BoxFit.cover,),
                SizedBox(width: 10),
                Image.asset('image/naruto-r5aa4v805ovp5cv4.jpg',width: 150, fit: BoxFit.cover,),
                 SizedBox(width: 10),
                Image.asset('image/sasuke-pictures-xcwwjzrdub9tuuxi.jpg',width: 150, fit: BoxFit.cover,),
                 SizedBox(width: 10),
                Image.asset('image/644141.jpg',width: 150, fit: BoxFit.cover,)

              ],
            ),),

            Padding(padding:  EdgeInsets.all(12),
            child:Text('Grid Item:',style: TextStyle(fontWeight: FontWeight.bold),),
            ),
             
            GridView.count(crossAxisCount: 2,shrinkWrap: true,physics: NeverScrollableScrollPhysics(),
            children:List.generate(20, (index){
              return Center(
                child: Text('Item $index',style: TextStyle(fontSize: 20),),
              );
            })
          )
          ],
       ),
    );
  }
}