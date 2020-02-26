import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      drawer: new Drawer(
        child: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Text("Hello Drawer"),
              new RaisedButton(onPressed: () => Navigator.pop(context), child: new Text("Close"))
            ],
          )
        )
      )
      ,
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text("Text Goes Here"),
            ]
          )
        )
      ),
    );
  }
}

/**
 *                    * Date Picker *
 *
    Future _selectDate() async { // async keyword is very important
      DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2016),
        lastDate: new DateTime(2021)
      );

      if (picked != null) setState(() => _value = picked.toString());
    }

*/

/**
 *                    * AppBar features *
 *
    int _value = 0;
    void _add() => setState(() => _value++);
    void _subtract() => setState(() => _value--);

    appBar: new AppBar(
      title: new Text('Name here'),
      backgroundColor: Colors.red,
      actions: <Widget>[
        new IconButton(icon: new Icon(Icons.add), onPressed: _add),
        new IconButton(icon: new Icon(Icons.remove), onPressed: _subtract)
      ],
    )
 */

/**
 *                * Floating Action Button *
 *
    void _onClick() => setState(() => _value = new DateTime.now().toString());
    floatingActionButton: new FloatingActionButton(
      onPressed: _onClick,
      backgroundColor: Colors.red,
      mini: false,
      child: new Icon(Icons.timer)
    ),
 */

/**
 *                * Drawer *
 *
    drawer: new Drawer(
      child: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text("Hello Drawer"),
            new RaisedButton(onPressed: () => Navigator.pop(context), child: new Text("Close"))
          ],
        )
      )
    )
 */

