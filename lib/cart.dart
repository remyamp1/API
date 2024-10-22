import 'package:flutter/material.dart';
class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
  
}

class _CartpageState extends State<Cartpage> {
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CART'),
      ),
      body:ListView.builder(itemBuilder: (context,index){
        return ListTile(
          title: Text("Name:${product.title}"),
          subtitle: Text('Price:\$${product.price.toString()}'),
        
        
        );
      }) ,
    );
  }
}