import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myappflutter/ScrnStateLess/ScrnB2A.dart';

/**
 * Navigator Screen*/

class ScrnA2B extends StatefulWidget{
    
    @override
    State createState() {
        return _ScrnA2B();
    }
}

class _ScrnA2B extends State<ScrnA2B>{

    Future<Route> createRouteTo(Widget screen) async {
        await Navigator.of(context).push(
            PageRouteBuilder(
                pageBuilder: (context, animation, animation2)=>screen,
                transitionsBuilder: (context, animation, secondaryAnimation, child){
                    var begin = Offset(0.0, 1.0);
                    var end = Offset.zero;
                    var curve = Curves.ease;
            
                    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            
                    return SlideTransition(
                        position: animation.drive(tween),
                        child: child,
                    );
                }
            ));
    }
    
    Future<Widget> routeTo(Widget route) async{
         await Navigator.push(context, MaterialPageRoute(builder: (context) => route)) ;
        //await Navigator.of(context).push(MaterialPageRoute(builder: (context)=>route));
    }
    
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('A.2.B'),
                elevation: 2.0,
                actions: <Widget>[
                    IconButton(icon: Icon(Icons.arrow_forward_ios),
                    onPressed: ()=>createRouteTo(ScrnB2A()),)
                ],
            ),
            body: Center(
                child: Text('Child'),
            ),
        );
    }
}