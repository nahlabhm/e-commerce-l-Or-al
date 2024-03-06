

import 'package:flutter/material.dart';
import 'package:makeup/models/newProductsData.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key,required this.product});
final Product product;

void addCart(BuildContext context) { // Ajoutez un argument de type Product
showDialog(
  context: context,
  builder: (context) => AlertDialog(
   content: Column(
      mainAxisSize: MainAxisSize.min, // Assurez-vous que la colonne occupe seulement l'espace nécessaire
      children: [
        Image.asset(
          "assets/images/make-up.png",
          height: 100,
          width:100,
        ),
        SizedBox(height: 10), // Espace vertical entre l'image et le texte
        Text(
          "Add To Cart Success",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 5), // Espace vertical entre le texte et le sous-titre
        Text(
          "Your item has been added to the cart.",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    ),
    actions: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center, // Centrer les boutons horizontalement
        children: [
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Cancel"),
          ),
              MaterialButton(
            onPressed: (){Navigator.pop(context);
            context.read<Shop>().addtocart(product);
            },
            child: Text("Yes"),
          ),
        ],
      ),
    ],
  ),
);

}

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
              Container(
          height: 130,
          width: 166,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(product.imageUrl,),
              fit: BoxFit.cover,
            ),
          ),
        ),
              Positioned(
          top: 2,
          left: 5,
          child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline_rounded,color:Colors.redAccent)))
          ],
        ),
      
        Text(
          product.name,
          style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 15,
              fontWeight: FontWeight.w300),
        ),
        Text(
          product.description,
          style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w400),
        ),
        Row(
          children: [
            Text(
              '\$' + product.price,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              width: 48,
            ),
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20))),
              child: Center(
                  child: IconButton(
                      onPressed: () => addCart(context),
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      ))),
            )
          ],
        ),
      
      ],
    );
  }
}