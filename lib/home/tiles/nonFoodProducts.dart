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
          Padding(
            padding: EdgeInsets.all(6.0),
              child: Align(alignment: Alignment.topLeft, child: Text('Non Food Products', style: TextStyle(fontWeight: FontWeight.bold),))),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                InkWell(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    height: 200,
                    width: 200,
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('lib/images/colgate_toothpaste.jpeg'),
                                fit: BoxFit.fitHeight,
                                colorFilter: new ColorFilter.mode(
                                    Colors.white.withOpacity(0.1),
                                    BlendMode.hardLight),
                              ),
                            ),
                          ),
                        ),
                        FlatButton(
                            child: Text('Select'),
                            color: Colors.yellow,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                            onPressed: () {
                              showSnackBar('Added to cart');
                            }),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
                //separator
                Container(
                  height: 100,
                  width: 50,
                  child: VerticalDivider(
                    color: Colors.grey,
                  ),
                ),
                InkWell(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    height: 200,
                    width: 200,
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('lib/images/jik_detergent.jpeg'),
                                fit: BoxFit.fitHeight,
                                colorFilter: new ColorFilter.mode(
                                    Colors.white.withOpacity(0.1),
                                    BlendMode.hardLight),
                              ),
                            ),
                          ),
                        ),
                        FlatButton(
                            child: Text('Select'),
                            color: Colors.yellow,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                            onPressed: () {
                              showSnackBar('Added to cart');
                            }),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
                //separator
                Container(
                  height: 100,
                  width: 50,
                  child: VerticalDivider(
                    color: Colors.grey,
                  ),
                ),
                InkWell(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    height: 200,
                    width: 200,
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('lib/images/sunlight_soap.jpeg'),
                                fit: BoxFit.fitHeight,
                                colorFilter: new ColorFilter.mode(
                                    Colors.white.withOpacity(0.1),
                                    BlendMode.hardLight),
                              ),
                            ),
                          ),
                        ),
                        FlatButton(
                            child: Text('Select'),
                            color: Colors.yellow,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                            onPressed: () {
                              showSnackBar('Added to cart');
                            }),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
                //separator
                Container(
                  height: 100,
                  width: 50,
                  child: VerticalDivider(
                    color: Colors.grey,
                  ),
                ),
                InkWell(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    height: 200,
                    width: 200,
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('lib/images/jik_detergent.jpeg'),
                                fit: BoxFit.fitHeight,
                                colorFilter: new ColorFilter.mode(
                                    Colors.white.withOpacity(0.1),
                                    BlendMode.hardLight),
                              ),
                            ),
                          ),
                        ),
                        FlatButton(
                            child: Text('Select'),
                            color: Colors.yellow,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                            onPressed: () {
                              showSnackBar('Added to cart');
                            }),
                      ],
                    ),
                  ),
                  onTap: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void showSnackBar(String value) {
    Scaffold.of(context).showSnackBar(new SnackBar(
        behavior: SnackBarBehavior.floating,
        duration: Duration(seconds: 3),
        content: Text(value)
    ));
  }
}
