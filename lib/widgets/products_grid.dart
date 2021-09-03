import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/providers/products.dart';
import 'package:provider/provider.dart';
import 'product_item.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // amount of column I want to have
        childAspectRatio: 3 / 2, // ratio of the child
        crossAxisSpacing: 10, // spacing between columns
        mainAxisSpacing: 10, // sapcing between the rows
      ),
      itemBuilder: (ctx, i) => ProductItem(
        products[i].id,
        products[i].title,
        products[i].imageUrl,
      ),
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
    );
  }
}
