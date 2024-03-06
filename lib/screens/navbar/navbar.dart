

import 'package:flutter/material.dart';
import 'package:makeup/models/newProductsData.dart';
import 'package:makeup/screens/cart/cartscreen.dart';
import 'package:makeup/screens/home/homescreen.dart';
import 'package:provider/provider.dart';

class NavbarScreen extends StatefulWidget {
  const NavbarScreen({super.key});

  @override
  State<NavbarScreen> createState() => _NavbarScreenState();
}

class _NavbarScreenState extends State<NavbarScreen> {
  late List<Widget> _pages;
  int selectedIndex=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pages=[
          HomeScreen(),
           HomeScreen(),
          CartScreen(),
          HomeScreen(),
          HomeScreen(),

    ];
  }
  void onItemTapped(int index){
    setState(() {
      selectedIndex=index;
    });
    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>_pages[selectedIndex]) );
  }
  @override
  Widget build(BuildContext context) {
        final cart=context.watch<Shop>().cart;

    return Scaffold(
      body: _pages[selectedIndex],
bottomNavigationBar: BottomNavigationBar( 
  items: [
    BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined, color: Colors.black),
      label: "Home"
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search_outlined, color: Colors.black),
      label: "Search"
    ),
  BottomNavigationBarItem(
  icon: Stack(
    children: <Widget>[
      Icon(Icons.shopping_bag_outlined, color: Colors.black),
      Positioned(
        right: 0,
        top: 0,
        child: Container(
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 248, 101, 2),
            borderRadius: BorderRadius.circular(8),
          ),
          constraints: BoxConstraints(
            minWidth: 16,
            minHeight: 14,
          ),
          child: Text(
            "${cart.length}",
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ],
  ),
  label: "Cart",
),

    BottomNavigationBarItem(
      icon: Icon(Icons.favorite_border, color: Colors.black),
      label: "Favorites"
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person, color: Colors.black),
      label: "Profile"
    )
  ],
  currentIndex: selectedIndex,
  onTap: onItemTapped,
),
    );
  }
}