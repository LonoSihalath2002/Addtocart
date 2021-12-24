import 'package:addtocart/widgets/cart_Product.dart';
import 'package:addtocart/widgets/catalog_Products.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(),
         body: Column(children: [
           CartProduct(),
           CartTotal()
         ],)
   
    );
  }
}