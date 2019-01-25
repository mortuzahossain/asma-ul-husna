import 'package:flutter/material.dart';
import 'package:asmaulhusna/models/name_mode.dart';

class NameDetails extends StatelessWidget {

  final Name data;
  NameDetails({this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(data.nameEn),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              data.name.replaceAll("'",""),
              style: TextStyle(fontSize: 40.0),
            ),
            Text(
              data.nameEn,
              style: TextStyle(fontSize: 35.0),
            ),
            Text(
              data.meaning,
              style: TextStyle(fontSize: 25.0),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    onPressed: (){},
                    child: Icon(Icons.play_arrow),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                  ),
                  RaisedButton.icon(
                    onPressed: (){},
                    icon: Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.launch),
                    )),
                    label: Text('Show More')
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
