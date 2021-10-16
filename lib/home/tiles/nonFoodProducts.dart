import 'package:flutter/material.dart';

class NonFoodProducts extends StatefulWidget {
  const NonFoodProducts({Key? key}) : super(key: key);

  @override
  _NonFoodProductsState createState() => _NonFoodProductsState();
}

class _NonFoodProductsState extends State<NonFoodProducts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Non Food Products'),
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
