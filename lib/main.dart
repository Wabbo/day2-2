import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Offer APP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  double price = 25.0;
  double totalPrice = 25.0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      totalPrice = price - price * _counter / 100;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
        totalPrice = price - price * _counter / 100;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text(widget.title, style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Current Product Price :  ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.green),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    '${price} EG',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.red),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                  child: Text("Set offer to the Product",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                    color: Colors.blue,
                    onPressed: _incrementCounter,
                    child: Icon(Icons.add)),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text("${_counter * 1.0} %",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                RaisedButton(
                    color: Colors.blue,
                    onPressed: _decrementCounter,
                    child: Icon(Icons.minimize))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Text(
                    'Price after apply offer : ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Text(
                    '${totalPrice} EG',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.red),
                  ),
                ),
              ],
            ),
            Text('')
          ],
        ),
      ),
    );
  }
}
