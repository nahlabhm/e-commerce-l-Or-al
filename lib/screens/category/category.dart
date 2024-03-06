import 'package:flutter/material.dart';
import 'package:makeup/models/category.dart';

class CatgeoryScreen extends StatefulWidget {
  const CatgeoryScreen({super.key});

  @override
  State<CatgeoryScreen> createState() => _CatgeoryScreenState();
}

class _CatgeoryScreenState extends State<CatgeoryScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:100,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Category",
                 style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "View all",
            style: TextStyle(
              color: Colors.black,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
            ],
          ),
          
          SizedBox(height: 15,),
         
         Container(
        child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return  Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
                 Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(categories[index].imageUrl),
                      fit: BoxFit.cover)
                  )
                 ),
                 Text(categories[index].name)
                    ],
                );
          }
        ))
        ],
      ),
    );
  }
}