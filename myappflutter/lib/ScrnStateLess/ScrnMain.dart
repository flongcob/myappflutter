import 'package:flutter/material.dart';
import 'package:myappflutter/ScrnStateLess/ScrnA2B.dart';
import 'package:myappflutter/ScrnStateLess/ScrnList.dart';


class ScrnMain extends StatefulWidget{

    @override
    State<StatefulWidget> createState() => _ScrnMain();

}

class _ScrnMain extends State<ScrnMain>{
    
    @override
    build(BuildContext context){
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Main",
            home: ScrnA2B(),
        );
    }

}