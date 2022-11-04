import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controllers/cart_controller.dart';
import '../Models/product_model.dart';

class catalogproducts extends StatelessWidget {
  const catalogproducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: ListView.builder(
            itemCount: Product.products.length,
            itemBuilder: (BuildContext context, int index) {
              return catalogproductcard(index: index);
            }));
  }
}

class catalogproductcard extends StatelessWidget {
  final cartController = Get.put(Cartcontroller());
  final int index;
  catalogproductcard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(blurRadius: 4, offset: Offset(0, 2))],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                    child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(1),
                            topRight: Radius.circular(1)),
                        child: Container(
                          height: 200,
                          child:
                              Image.network(Product.products[index].imageUrl),
                        )))
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                        child: Text(
                          Product.products[index].name,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            cartController.addProduct(Product.products[index]);
                          },
                          icon: Icon(Icons.add_circle))
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                    child: Text(
                      'Price: ${Product.products[index].price}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
