import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 *
 * **/


class ScrnStateLess extends StatelessWidget{
    
    
    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: Text('AppBar'),
            ),
            body: Center(
                child: Text('Child'),
            ),
        ),
    );
  }
  
  
}