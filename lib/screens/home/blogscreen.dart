

import 'package:flutter/material.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({Key? key}) : super(key: key);

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  @override
  Widget build(BuildContext context) {
   return Padding(padding: EdgeInsets.all(20),
   child:Column(
    crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Beauty Blog",
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
          SizedBox(height: 15),
      
         Container(
              width: double.infinity,
              height: 255,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/48c78b912261627c1ac5f563b3cdb13a.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10,),
            Text("My Go-to new nude \n palette look ",
             style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),),
            Row(
              children: [
                Text("1 Day ago | Trends ",
                 style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
                ),
                SizedBox(width: 200,),
                Icon(Icons.favorite_border,
                  color: Colors.grey.shade700,
               
                ),

                Text("680",
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),),
                SizedBox(width: 20,),
                 Icon(Icons.watch_outlined,
                
                  color: Colors.grey.shade700,
                ),
                Text("584",
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),),
              ],
            )
        ],
   )
);
  }}