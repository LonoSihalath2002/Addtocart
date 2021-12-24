import 'package:addtocart/controller/cart_Contoller.dart';
import 'package:addtocart/models/prodyct_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartProduct extends StatelessWidget {
  final CratController controller = Get.find();
  CartProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        height: 500,
        child: ListView.builder(
            itemCount: controller.product.length,
            itemBuilder: (BuildContext context, int index) {
              return CartProductCart(
                controller: controller,
                products: controller.product.keys.toList()[index],
                quantity: controller.product.values.toList()[index],
                index: index,
              );
            }),
      ),
    );
  }
}

class CartProductCart extends StatelessWidget {
  final CratController controller;
  final Product products;
  final int quantity;
  final int index;

  const CartProductCart({
    Key? key,
    required this.controller,
    required this.products,
    required this.quantity,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 100,
            height: 130,
            // decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            child: Image.asset(products.image),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(child: Text(products.name)),
          IconButton(
              onPressed: () {
                controller.removeProduct(products);
              },
              icon: Icon(Icons.remove_circle)),
          Text('${quantity}'),
          IconButton(
              onPressed: () {
                controller.addProduct(products);
              },
              icon: Icon(Icons.add_circle)),
        ],
      ),
    );
  }
}

class CartTotal extends StatelessWidget {
  final CratController controller = Get.find();
  CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() =>
      Container(
        padding: EdgeInsets.symmetric(horizontal: 60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              '${controller.total}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
