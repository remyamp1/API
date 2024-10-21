import 'dart:convert';

import 'package:api_example/data_model.dart';
import 'package:api_example/detalis.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
class Api extends StatefulWidget {
  const Api({super.key});

  @override
  State<Api> createState() => _ApiState();
}

class _ApiState extends State<Api> {
  bool _isLoading=true;
  @override
  void initState(){
    super.initState();
    _getData();
  }
  Productmodelapi? dataFromAPI;
  _getData() async{
    try {
      String url="http://dummyjison.com/products";
      http.Response res=await http.get(Uri.parse(url));
      if(res.statusCode ==200){
        dataFromAPI=Productmodelapi.fromJson(json.decode(res.body));
        _isLoading=false;
        setState(() {});
      }
    } catch (e) {
     debugPrint (e.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API "),
        
      ),
      body: _isLoading?
      const Center(
        child: CircularProgressIndicator(),
      )
      :dataFromAPI==null?
      const Center(
        child: Text('Failed to load data'),
      )
      
     : GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
     itemCount: dataFromAPI!.products.length,
       itemBuilder: (context,index){
        final product =dataFromAPI!.products[index];
        return GestureDetector(
          onTap: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>ApiDemo(
              product: product,
         
            )));
          },
          child: Container(
            
            child: Column(
              children: [
                Image.network(product.thumbnail,width: 100,height: 100,),
                SizedBox(height: 10,),
                Text(product.title),
                SizedBox(height: 10,),
                Text("\$${product.price.toString()}")
              ],
            ),
          ),
        );
      }),
    );
  }
}