


import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrnList extends StatefulWidget{
    
    @override
    State<StatefulWidget> createState()=> _ScrnList();
}

class _ScrnList extends State<ScrnList>{
    
    var _isVisble = true;
    
    @override Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Screen List',
            home: Scaffold(
                appBar: AppBar(
                    title: Text('List Screen'),
                ),
                body: Center(
                    child: createListView3(),
                ),
            ),
        );
    }
    
    void _onTapFunctor(int i){
        print('On Press $i !!!!');
    }

    void _onTapFunctor2(String i){
        print('On Press $i !!!!');
    }
    
    ListView createListView() => ListView(
        children: createCardItems().map((i){return i.key == Key('0') ? ListTile(title: Text('Header'),) : i;}).toList()
    );

    ListView createListView2(){
        return ListView(
            children: List<String>.generate(20, (i){
                return '$i';}
            ).map((str){
                return ListTile(title: Text(str),);}).toList(),
        );
    }

    ListView createListView3() => ListView(
        children: createCardItems2()
    );
    
    
    List<ListTile> createListTileItems() => List<ListTile>.generate(60, (i)=>ListTile(
        leading: Icon(Icons.account_circle),
        title: Text("Item $i",),
    ));
    
    List<Card> createCardItems() => List<Card>.generate(100, (i)=>Card(
        key: Key('$i'),
        elevation: 2,
        color: Colors.white,
        margin: const EdgeInsets.all(8.0),
        child: InkWell(
            child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Items $i'),
                subtitle: Text('Hello and Press me!'),
                dense: true,
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: ()=>_onTapFunctor(i),),
        )
    ));
    
    
    List<Card> createCardItems2(){
        
        List<String> list = List<String>.generate(20, (i){
            return 'Item $i';
        });
        
        Iterable<Card> it = list.map((str){
            return Card(
                key: Key(str),
                elevation: 2,
                color: Colors.white,
                margin: EdgeInsets.only(left: 26.0,top: 4.0,right: 26.0,bottom: 4.0),
                child: Row(
                    children: <Widget>[
                        Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: Container(
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        child: IconButton(icon: Icon(Icons.android),),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.lightBlue
                                        ),
                                    ),
                                ),
                                margin: EdgeInsets.only(left: 16.0, top: 2.0,right: 2.0),
                                padding: EdgeInsets.all(2.0),
                            )
                        ),
                        Flexible(
                            flex: 3,
                            fit: FlexFit.tight,
                            child: Container(
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Text('$str'),
                                ),
                                margin: EdgeInsets.all(4.0),
                                padding: EdgeInsets.all(2.0),
                            ),
                        ),
                        Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: Container(
                                child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: IconButton(icon: Icon(Icons.android),),
                                ),
                                margin: EdgeInsets.all(4.0),
                                padding: EdgeInsets.all(2.0),
                            ),
                        ),
                    ],
                ),
            );
        });
        
        return it.toList();
    }
}
