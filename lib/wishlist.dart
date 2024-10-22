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
        actions: [
        GestureDetector
        (
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Cartpage()));
          },
          child: Icon(Icons.shopping_cart))
        ],
      ),
      body: ListView.separated( separatorBuilder: (context,index){
        return SizedBox(height: 10,);
      }, itemCount: 1,
      itemBuilder: (context,index){
        return Container(
          height: 150,
          width: double.infinity,
         child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60,
              width: 100,
              child: 
                 Image.network(product.thumbnail),
          
            ),
      Row(
       
        children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(product.title),
            ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('${product.price.toString()}'),
      )
                     ],
                      ),
    
     
        );
      },)
    );
  }
}