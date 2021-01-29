import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: AdiCard(),
));

class AdiCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Adi's ID Card"),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/adiunni.jpg'),
                radius: 100,
                backgroundColor: Colors.transparent,
              ),
            ),
            Divider(
              height: 25,
              color: Colors.grey[800],
            ),
            SizedBox(height: 15),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Aditya Unnikrishnan',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'NATIONALITY',
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Indian',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 10),
                Text(
                  'adiunni@hotmail.com',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
