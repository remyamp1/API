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
      body:ListView.builder(
        itemCount: 4,
        itemBuilder: (context,index){
        return 
            Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
              color: const Color.fromARGB(255, 236, 225, 225)),
              child: Row(
                children: [
                  Container(
                child:  Image.network(product.thumbnail,width: 100,height: 65,)
          
                     
                 
                     
                  ),
                  SizedBox(width: 5),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 2),
                      Text('Name'),
                      SizedBox(height: 5),
                      Text('Price')
                    ],
                  )
                ],
          
            ),
            
          
        );
        
        
        
      }) ,
    );
  }
}