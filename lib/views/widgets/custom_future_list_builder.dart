import 'package:flutter/material.dart';
import 'package:shop_application/models/product_model.dart';
import 'package:shop_application/services/get_all_product.dart';

import 'custom_card.dart';

class CustomFutureListBuilder extends StatelessWidget {
  const CustomFutureListBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ProductModel>>(
      future: AllProductServices().getAllProduct(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<ProductModel> products = snapshot.data!;
          return GridView.builder(
            physics: const BouncingScrollPhysics(),
            clipBehavior: Clip.none,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 18,
              mainAxisExtent: 200,
            ),
            itemBuilder: (context, index) => CustomCard(product:products[index],),
            itemCount: products.length,
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
