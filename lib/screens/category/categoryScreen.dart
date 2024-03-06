

import 'package:flutter/material.dart';
import 'package:makeup/models/category.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
return Scaffold(
  body: SingleChildScrollView(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Stack(
        children: [
          
          Container(
            height: 344,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/ea1ee59a8fe4c9e728d941b0942ef6ac.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
               Positioned(
            left: 0,
            top: 20,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back, color: Colors.black),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 200),
            child: Column(
              children: [
                Text(
                  "New In \n Make up Kit",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "Save over 55% Off",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      SizedBox(
      height: 500, // Set a height or width according to your layout requirements
      child: Container(
       child:ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(5, 10),
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 10,
                    spreadRadius: 0,
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
                color: Colors.white, // Added a background color for the container
              ),
              child: ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Image.asset(categories[index].imageUrl, fit: BoxFit.cover),
                title: Text(
                  categories[index].name,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: Icon(Icons.arrow_right),
              ),
            );
          },
        ),
   )
      )
    ],
  ),
));
  }
}