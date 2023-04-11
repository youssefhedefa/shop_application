import 'package:flutter/material.dart';
import 'package:shop_application/views/widgets/custom_appBar.dart';

class UpdateProductView extends StatelessWidget {
  const UpdateProductView({Key? key}) : super(key: key);
  static String id = 'update product page';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
    );
  }
}
