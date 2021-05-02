import 'dart:ui';

import 'package:flutter/material.dart';

class CountPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CountPageState();
  }
}

class _CountPageState extends State<CountPage> {
  final _textStyle = new TextStyle(fontSize: 25);
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Titulo',
            style: TextStyle(color: Colors.yellow),
          ),
          centerTitle: true,
          elevation: 0.7,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Número de taps en stateful:',
                style: _textStyle,
              ),
              Text(
                '$_count',
                style: _textStyle,
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: _createActions());
  }

  Widget _createActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: 30.0),
        FloatingActionButton(
            onPressed: _reset, child: Icon(Icons.exposure_zero)),
        Expanded(child: SizedBox()),
        FloatingActionButton(onPressed: _substract, child: Icon(Icons.remove)),
        SizedBox(width: 5.0),
        FloatingActionButton(onPressed: _add, child: Icon(Icons.add)),
        SizedBox(width: 15.0)
      ],
    );
  }

  void _add() {
    setState(() {
      _count++;
    });
  }

  void _substract() {
    setState(() {
      _count--;
    });
  }

  void _reset() {
    setState(() {
      _count = 0;
    });
  }
}
