

import 'package:flutter/material.dart';
import 'package:makeup/models/category.dart';
import 'package:makeup/screens/category/categoryScreen.dart';
import 'package:makeup/screens/home/producrbody.dart';
import 'package:typewritertext/typewritertext.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

return Scaffold(
  body:Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
  child: SingleChildScrollView(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Container(
        height: 60,
        width: 320,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/fdac92e5c679cfd412318cff03008614-removebg-preview (1).png"),
          fit: BoxFit.cover)
        ),
      ),
      TextFormField(
        decoration: InputDecoration(
          isDense: true,
          filled: true,
          hintText: "Search",
          fillColor: Colors.grey.shade100,
          suffixIcon: Icon(
            Icons.search,
            color: const Color.fromARGB(255, 131, 131, 131),
            size: 20,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      SizedBox(height: 10),
      Stack(
        children: [
          Container(
            height: 315,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/3d4ca31d1494720107a3feb694a4f43a.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Positioned(
            top: 230,
            left: 15,
            child:TypeWriterText(
             text:Text( "Shop the beauty \n trends",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w800,
                fontFamily: "Muli",
              ),
             ),
               duration: Duration(milliseconds: 100),

            ),
          ),
        ],
      ),
    SizedBox(height: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Categories()));
                      },
                      child: Text(
                      "View all",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    )
                 
                  ],
                ),
                SizedBox(height: 15),
                Container(
                  height: 80,
                  child: ListView.builder(
                    itemCount: categories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(categories[index].imageUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(categories[index].name,
                             style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "New Arrivals",
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
              
           Productbody(),
           SizedBox(height:22),
           Column(
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
                  image: AssetImage("assets/images/28149975f8f147e1d8fc6c2bd055bc34.jpg"),
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
                SizedBox(width: 90,),
                Icon(Icons.favorite_border,
                  color: Colors.grey.shade700,
               
                ),

                Text("680",
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),),
                SizedBox(width: 10,),
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
    ],
  ),
  )
  )
  );
  }
}
