


import 'package:flutter/material.dart';
import 'package:makeup/models/ombording.dart';
import 'package:makeup/screens/navbar/navbar.dart';

class OmbordingScreen extends StatefulWidget {
  const OmbordingScreen({super.key});

  @override
  State<OmbordingScreen> createState() => _OmbordingScreenState();
}

class _OmbordingScreenState extends State<OmbordingScreen> {
    int currentindex=0;
  late PageController _controller;

  @override
  void initState(){
       _controller= PageController(initialPage: 0);
       super.initState();
  }

  @override
void dispose(){
  _controller.dispose();
  super.dispose();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
        children: [
          Expanded(
            child: PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: contents.length,
            controller: _controller,
            onPageChanged: (int index) {setState(() {
               currentindex=index;
            }); },
            itemBuilder: (BuildContext context, int index) {  
              return 
         Column(
                children: [
                      Container( 
                        height: 480,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(image:AssetImage(contents[index].image),
                          fit: BoxFit.cover)
                        ),

                      ),
                 Text(contents[index].title,
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.black,
                        ),),
                    SizedBox(height: 15,),
                         Padding(padding: EdgeInsets.all(30),
                 child:Text(contents[index].description,
                   textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 73, 2, 2),
                        ),)
                      )
                ],
              
              );
            },
            
          ),
          ),
           
           Container(
            
             child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                      ...List.generate(contents.length, (index) => Container(
              height:8,
             width:currentindex ==index ? 18:10,
             margin: EdgeInsets.only(right: 10),
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 22, 22, 22)
             ),
                      ))

              ],
             )
           ),
          
                   Container(
            height: 60,
            margin: EdgeInsets.all(40),
            width: double.infinity,
            child: OutlinedButton(
              style:OutlinedButton.styleFrom(
                 backgroundColor: Colors.black
              ),
             child: Text(currentindex == contents.length - 1 ? "Continue" : "Next",
               style: TextStyle(
                  
                          color:  Colors.white,
                        ),
             ),
              onPressed: () {
                if (currentindex == contents.length - 1) {

          Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => NavbarScreen(),
                    ),
                  );
                }
                _controller.nextPage(
                  duration: Duration(milliseconds: 100), curve: Curves.bounceInOut,
                );
                  }
                  ))
            
        ],
      ),
    );
  }
}