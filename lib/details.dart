import 'package:flutter/material.dart';
import 'package:asmaulhusna/models/name_mode.dart';
import 'package:url_launcher/url_launcher.dart';

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
                    onPressed: () async{
                      //AudioPlayer audioPlayer = new AudioPlayer();
                      //await audioPlayer.play(data.audio);
                      // print(data.audio);
                      var url = data.audio;
                      if (await canLaunch(url))await launch(url);
                      else throw 'Could not launch $url';
                    },
                    child: Icon(Icons.play_arrow),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                  ),
                  RaisedButton.icon(
                    onPressed: () async{
                      var url = data.externalLink;
                      if (await canLaunch(url))await launch(url);
                      else throw 'Could not launch $url';
                    },
                    icon: Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.launch),
                    )),
                    label: Text('Show More')
                  )
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.all(10.0),
              elevation: 10.0,
              child: 
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: Text(
                    data.description,
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
            )
          ],
        ),
      ),
    );
  }
}
