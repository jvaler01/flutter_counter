import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final generalStyle = new TextStyle( fontSize: 35 );
  final counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Title"),
        centerTitle: true,
      ),
      body: Center(
        //child: Text("Counter: "),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Counter: ",
              style: generalStyle
            ),
            Text(
              '$counter',
              style: generalStyle
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //print("Test");
          //counter = counter + 1;
        },
        child: Icon(
          Icons.add
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}