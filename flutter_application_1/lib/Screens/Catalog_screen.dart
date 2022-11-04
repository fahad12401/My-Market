import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Widgets/catalog_products.dart';
import 'Cart_screen.dart';

class Catalogscreen extends StatelessWidget {
  const Catalogscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('CATALOG SCREEN'),
        actions: [
          IconButton(
              onPressed: () => Get.to(() => cartscreen()),
              icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          catalogproducts(),
        ],
      )),
    );
  }
}
