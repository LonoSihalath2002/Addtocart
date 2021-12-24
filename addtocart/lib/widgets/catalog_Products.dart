// ignore_for_file: file_names

import 'package:addtocart/controller/cart_Contoller.dart';
import 'package:addtocart/models/prodyct_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatalogProduct extends StatelessWidget {
  const CatalogProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: ListView.builder(
            itemCount: Product.products.length,
            itemBuilder: (BuildContext context, int index) {
              return CatalogProductCart(index: index);
            }));
  }
}

class CatalogProductCart extends StatelessWidget {
  final cartController = Get.put(CratController());
  final int index;
  CatalogProductCart({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 100,
            height: 130,
            // decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            child: Image.asset(Product.products[index].image),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(child: Text(Product.products[index].name)),
          Expanded(child: Text('${Product.products[index].price}')),
          IconButton(
              onPressed: () {
                SimpleDialog(
                  children: [Text('Ok')],
                );
                cartController.addProduct(Product.products[index]);
              },
              icon: Icon(Icons.add_circle))
        ],
      ),
    );
  }
}
