import 'package:api_example/cart.dart';
import 'package:api_example/data_model.dart';
import 'package:flutter/material.dart';
class Wishlist extends StatelessWidget {



   final Product product;
const Wishlist({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist'),
        actions: [
        GestureDetector
        (
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Cartpage()));
          },
          child: Icon(Icons.shopping_cart))
        ],
      ),
      body: ListView.builder(  itemCount: 1,
      itemBuilder: (context,index){
        return ListTile(
          leading:  Image.network(product.thumbnail,width: 100,height: 65,),
          
            title:Text(product.title,),
            subtitle:  Text("\$${product.price.toString()}"),
            trailing: ElevatedButton(onPressed: (){}, child: Text('Add to Cart')),
        );
      },)
    );
  }
}