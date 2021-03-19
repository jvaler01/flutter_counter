import 'dart:ui';

import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
    return _CounterPageState();
    
  }
}


class _CounterPageState extends State<CounterPage> {

  final _generalStyle = new TextStyle( fontSize: 35 );
  int _counter = 0;
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
              style: _generalStyle
            ),
            Text(
              '$_counter',
              style: _generalStyle
            )
          ],
        ),
      ),
      floatingActionButton: _generateButtons()
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }


  Widget _generateButtons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox( width: 30.0, ),
        FloatingActionButton(
          onPressed: () => _onPressButton('refresh'),
          child: Icon(
            Icons.refresh
          ),
        ),
        Expanded(child: SizedBox( )),
        FloatingActionButton(
          onPressed: () => _onPressButton('remove'),
          child: Icon(
            Icons.remove
          ),
        ),
        SizedBox( width: 5.0, ),
        FloatingActionButton(
          onPressed: () => _onPressButton('add'),
          child: Icon(
            Icons.add
          ),
        ),
      ],
    );
  }

  void _onPressButton(String flag){
    if(flag == 'add'){
      _counter = _counter + 1;
    }else if (flag == 'remove') {
      _counter = _counter - 1;
    } else if (flag == 'refresh') {
      _counter = 0;
    } else {
      _counter = 0;
    }
    setState(() {
    });
  }
}