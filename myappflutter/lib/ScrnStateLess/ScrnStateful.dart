

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrnStateful extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _ScrnStateful();
  }
  
}

class _ScrnStateful extends State<ScrnStateful>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Screen Stateful',
        home: Scaffold(
            appBar: AppBar(
                title: Text('Statefull Screen'),
            ),
            body: Container(
                child: Text('Child'),
            ),
        ),
    );
  }
  
}