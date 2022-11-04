import 'package:flutter/material.dart';

import '../Widgets/cart_product.dart';
import '../Widgets/cart_total.dart';

class cartscreen extends StatelessWidget {
  const cartscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('CART SCREEN'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [cartproduct(), Carttotal()],
          ),
        ));
  }
}
