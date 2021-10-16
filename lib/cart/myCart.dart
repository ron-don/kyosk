import 'package:flutter/material.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({Key? key}) : super(key: key);

  @override
  _MyCartScreenState createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          RaisedButton(
              child: Text('CHECKOUT', style: TextStyle(color: Colors.white),),
              color: Colors.lightBlueAccent,
              onPressed: () {

              }),
        ],
      ),
    );
  }
}
