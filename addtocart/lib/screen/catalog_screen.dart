import 'package:addtocart/screen/cart_screen.dart';
import 'package:addtocart/widgets/catalog_Products.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog'),
      ),
      body: SafeArea(
          child: Column(
        children: [
          CatalogProduct(),
          ElevatedButton(onPressed: () => Get.to(() => CartScreen()), child: Text('Go to Cart')),
        ],
      )),
    );
  }
}
