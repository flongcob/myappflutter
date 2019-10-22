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

    bool _isVisible = true;
    
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
    
    
    //bouncy button on tap
    //https://medium.com/flutter-community/flutter-bouncing-button-animation-ece660e19c91
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
                child: AnimatedOpacity(
                    opacity: _isVisible ? 1.0 : 0.5,
                    duration: Duration(milliseconds: 50),
                    child: RaisedButton(
                        child: Text('Click Me'),
                        onPressed: (){
                            _isVisible = _isVisible ? false : true;
                            setState(() {
                            });
                        },
                    ),
                ),
            ),
        );
    }
    
    Stream<bool> getOpacityStream() => Stream<bool>.periodic(Duration(milliseconds: 500), (i){} )
            .map((i){
                return i == 0 ? false : true;
        }).take(2);
    
    //var opacityStream = Stream<bool>.periodic(Duration(milliseconds: 500), (i)=> i == 1 ).take(2);
}