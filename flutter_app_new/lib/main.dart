import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home: Home(),
));


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CryptoCrit"),
        backgroundColor: Colors.red[900],
        centerTitle: true,
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
              child: Image.asset('images/space101.jfif')
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.cyan,
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.amber,
              child: Text('2'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.pink,
              child: Text('3'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Click'),
        backgroundColor: Colors.red[900],
        onPressed: () {},
      ),
    );
  }
}
