//https://pub.dev/packages/location
//https://medium.com/flutter-community/build-a-location-service-in-flutter-367a1b212f7a

import 'package:flutter/material.dart';

class ScrnLocationService extends StatefulWidget{
    
    @override
    State<StatefulWidget> createState() => _ScrnLocationService();
}

class _ScrnLocationService extends State<ScrnLocationService>{
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Location Service'),
                leading: IconButton(icon: Icon(Icons.arrow_back_ios),
                    onPressed: (){},),
            ),
            body: Center(
                child: Text('Child'),
            ),
        );
    }
}

