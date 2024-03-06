import 'package:flutter/material.dart';
import 'package:makeup/models/newProductsData.dart';
import 'package:makeup/screens/home/product.dart';

class Productbody extends StatelessWidget {
  const Productbody({Key? key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230, // Set a height or width according to your layout requirements
      child: Container(
        child: ListView.builder(
          itemCount: Shop().shop.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return 
             ProductScreen(
              product: Shop().shop[index],

             );
          },
        ),
      ),
    );
  }
}