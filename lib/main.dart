import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: AllanCard(),
    ));

class AllanCard extends StatefulWidget {
  @override
  _AllanCardState createState() => _AllanCardState();
}

class _AllanCardState extends State<AllanCard> {
  int allanlevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Allan Kiche Id'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 3.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            allanlevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://alankiche.netlify.app/images/WhatsApp%20Image%202021-04-01%20at%2015.46.23%20(1).jpeg'),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.yellow[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.green,
                letterSpacing: 2.5,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Allan Kiche',
              style: TextStyle(
                  color: Colors.yellow[800],
                  letterSpacing: 2.5,
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Current Level',
              style: TextStyle(
                color: Colors.green,
                letterSpacing: 2.5,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$allanlevel',
              style: TextStyle(
                  color: Colors.yellow[800],
                  letterSpacing: 2.5,
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[Icon(Icons.email, color: Colors.white)],
            ),
            SizedBox(width: 3.0),
            Text(
              'allankiche18@gmail.com',
              style: TextStyle(
                  color: Colors.white, fontSize: 15.0, letterSpacing: 1.2),
            )
          ],
        ),
      ),
    );
  }
}

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}
//the second class is instantiated here

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
