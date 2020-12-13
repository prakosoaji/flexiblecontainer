import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flexible Container"),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        color: Colors.brown,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        color: Colors.orange,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(5),
                color: Colors.red,
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(5),
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
