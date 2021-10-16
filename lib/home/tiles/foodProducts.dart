import 'package:flutter/material.dart';

class FoodProducts extends StatefulWidget {
  const FoodProducts({Key? key}) : super(key: key);

  @override
  _FoodProductsState createState() => _FoodProductsState();
}

class _FoodProductsState extends State<FoodProducts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Food Products'),
          InkWell(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 200,
                    width: 200,
                    color: Colors.blue,
                    child: Text('Blue'),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 200,
                    width: 200,
                    color: Colors.red,
                    child: Text('Red'),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 200,
                    width: 200,
                    color: Colors.black,
                    child: Text('Black'),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 200,
                    width: 200,
                    color: Colors.amber,
                    child: Text('Amber'),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 200,
                    width: 200,
                    color: Colors.green,
                    child: Text('Green'),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
