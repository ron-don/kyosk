import 'package:flutter/material.dart';
import 'package:kyosk/home/homeMenu.dart';
import 'package:kyosk/home/category.dart';
import 'package:kyosk/home/myAccount.dart';
import 'package:kyosk/home/myCart.dart';
import 'dart:io';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget pages(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return HomeMenuScreen();
      case 1:
        return CategoryScreen();
      case 2:
        return MyCartScreen();
      case 3:
        return MyAccountScreen();
      default:
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30.0),
        child: AppBar(
          title: Row(
            children: [
              Container(
                width: 10.0,
              ),
              Text(
                'Kyosk',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ),
      ),
      body: pages(_currentIndex),
      backgroundColor: Colors.grey,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        elevation: 5.0,
        selectedItemColor: Colors.blue,
        selectedFontSize: 10.0,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: onTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text('Categories')),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), title: Text('My Cart')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin), title: Text('My Account')),
        ],
      ),
    );
  }
}
