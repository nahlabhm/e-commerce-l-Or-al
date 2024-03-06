


import 'package:flutter/material.dart';
import 'package:makeup/models/newProductsData.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
int quantity = 0;

void decreaseQuantity(int index){
  setState(() {
        quantity++;
    
  });
}
void increaseQuantity(int index){
  setState(() {
      if(quantity>0){
        quantity--;
      }
  });
}
void removeCart(BuildContext context,Product product) { // Ajoutez un argument de type Product
showDialog(
  context: context,
  builder: (context) => AlertDialog(
   content: Column(
      mainAxisSize: MainAxisSize.min, // Assurez-vous que la colonne occupe seulement l'espace nécessaire
      children: [
        Image.asset(
          "assets/images/trash_12804880.png",
          height: 100,
          width:100,
        ),
        SizedBox(height: 10), // Espace vertical entre l'image et le texte
        Text(
          "Remove To Cart Success",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 5), // Espace vertical entre le texte et le sous-titre
        Text(
          "Your item has been Remove to the cart.",
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
            context.read<Shop>().removetocart(product);
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
    final cart=context.watch<Shop>().cart;

    return Scaffold(
      appBar: AppBar( 
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back,color:Colors.black45)),
      ),
      body:Padding(padding: EdgeInsets.all(14),
      child: Column( 
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("My Cart",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),),
                  Text(
              "${cart.length} Item",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black12,
                fontWeight: FontWeight.w500
              ),)
            ],
          ),
          SizedBox(height: 15,),
          Expanded(
            child: cart.isEmpty
            ? const Center(child: Text("cart is empty",
            style: TextStyle(
                    color: Color.fromARGB(255, 65, 65, 65),
                    fontSize:27,
                    fontWeight: FontWeight.w500
                  ),),)
            : ListView.builder(
              itemCount: cart.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) { 
               final item= cart[index];
                return  Container(
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)
                    )
                  ),
                  child: Row(
                    children: [
                      Image.asset(item.imageUrl, height: 100,),
                      SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(item.name,
                          style: TextStyle(
                    color: Color.fromARGB(255, 70, 69, 69),
                    fontSize: 15,
                    fontWeight: FontWeight.w400
                  ),),
                          Text(item.description,
                          style: TextStyle(
                    color: Colors.black,
                    fontSize:17,
                    fontWeight: FontWeight.w700
                  ),),
                    Text('\$'+item.price,
                        style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w700
                  ),),
                  SizedBox(height: 15,),
                   Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black12,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(40),
          color: Color.fromARGB(31, 179, 179, 179),
        ),
        child: Row(
          children: [
            InkWell(
              onTap: () => decreaseQuantity(index),
              child: Container(
                width: 30,
                height: 30,
                alignment: Alignment.center,
                child: const Icon(
                  Icons.add,
                  size: 15,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                width:20,
                height:20,
                alignment: Alignment.center,
                child: Text(
                 " $quantity",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () => increaseQuantity(index),
              child: Container(
                width: 35,
                height: 32,
                alignment: Alignment.center,
                child: const Icon(
                  Icons.remove,
                  size: 18,
                  color: Colors.black,
                ),
              ),
            ),
     ] )
      )
  
            ]
            ),
                        ],
                      ),
                      SizedBox(width: 44,),
                  
                    Container(
                      alignment: Alignment.center,
                       child:Center( child: IconButton(onPressed: (){removeCart(context, item);}, icon: Icon(Icons.delete_rounded,color: Color.fromARGB(255, 194, 149, 51),)),)
                  ),
                 
                    ],
                  ),
                );
               },)

          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 45,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.black,
                side: BorderSide.none
              ),
              onPressed: (){}, 
              child: Center(child: Text("Checkout",
              style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700
                  ),)),
            )
          )
          
        ],
      ),
      )
    );
  }
}