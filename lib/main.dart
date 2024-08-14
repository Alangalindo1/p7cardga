import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FloatingActionButtonDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FloatingActionButtonDemo extends StatefulWidget {
  const FloatingActionButtonDemo({Key? key}) : super(key: key);

  @override
  _FloatingActionButtonDemoState createState() =>
      _FloatingActionButtonDemoState();
}

class _FloatingActionButtonDemoState extends State<FloatingActionButtonDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          child: Card(
            shape: RoundedRectangleBorder(
              side: BorderSide.merge(
                  BorderSide(
                      width: 1.5, color: Colors.grey, style: BorderStyle.solid),
                  BorderSide(
                      width: 1.5,
                      color: Colors.grey,
                      style: BorderStyle.solid)),
              borderRadius: BorderRadius.circular(20),
            ),
            color: Colors.blueAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 250,
                  width: 250,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide.merge(
                          BorderSide(
                              width: 1.5,
                              color: Colors.grey,
                              style: BorderStyle.solid),
                          BorderSide(
                              width: 1.5,
                              color: Colors.grey,
                              style: BorderStyle.solid)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            'card galindo',
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 30),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(height: 100, width: 100, child: FlutterLogo())
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
