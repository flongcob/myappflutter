import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * Navigator Screen*/


class ScrnB2A extends StatefulWidget{
    
    @override
    State createState() => _ScrnB2A();
}

class _ScrnB2A extends State<ScrnB2A>{
    
    Future<Widget> popRoute() async{
        await Navigator.of(context).pop(true);
    }
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('B.2.A'),
                leading: IconButton(icon: Icon(Icons.arrow_back_ios),
                    onPressed: ()=>popRoute(),),
            ),
            body: Center(
                child: Text('Child'),
            ),
        );
        
        
//        return MaterialApp(
//            title: 'ScrnB2A',
//            home: Scaffold(
//                appBar: AppBar(
//                    title: Text('B -> A'),
//                    leading: IconButton(icon: Icon(Icons.arrow_back_ios),
//                        onPressed: ()=>popRoute()),
//                ),
//                body: Center(),
//            ),
//        );
    }
}