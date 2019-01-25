import 'package:asmaulhusna/details.dart';
import 'package:flutter/material.dart';
import 'package:asmaulhusna/data/data.dart';
import 'package:asmaulhusna/models/name_mode.dart';
import 'dart:convert';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    title: '99 Names of Allah',
    theme: ThemeData.dark(),
    home: Home(),
  )
);

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Name> names = [];
  var data = json.decode(jsonData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('99 Names of Allah'),
        centerTitle: true,
        primary: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount:2,
          childAspectRatio: 0.80,
          children: List.generate(data.length, (index) {
            // return getStructuredGridCell(context,Name(data[index][1],data[index][2],data[index][3],data[index][4],data[index][5]));
            return getStructuredGridCell(context,Name(data[index][1],data[index][2],data[index][3], data[index][4],data[index][5],data[index][6]));
          })
        ),
      ),
    );
  }
}


Card getStructuredGridCell(BuildContext context,Name name) {
  return new Card(
      elevation: 5,
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(
              builder: (context)=> NameDetails(data: name)
          ));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            Text(
              name.name.replaceAll("'",""),
              style: TextStyle(fontSize: 30.0),
            ),
            Text(
              name.nameEn,
              style: TextStyle(fontSize: 26.0),
            ),
            Text(
              name.meaning,
            )
          ],
        ),
      )
  );
}