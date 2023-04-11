import 'package:flutter/material.dart';
import 'package:shop_application/views/widgets/custom_appBar.dart';
import 'package:shop_application/views/widgets/custom_button.dart';
import 'package:shop_application/views/widgets/custom_text_form_field.dart';

class UpdateProductView extends StatefulWidget {
  const UpdateProductView({Key? key}) : super(key: key);
  static String id = 'update product page';

  @override
  State<UpdateProductView> createState() => _UpdateProductViewState();
}

class _UpdateProductViewState extends State<UpdateProductView> {
  //TextEditingController productNameEditingController = TextEditingController();
  String? productName,description,price,image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Update Product',
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            CustomTextFormField(
              label: 'Product Name',
              onChanged: (value)
              {
                productName = value;
              },
            ),
            const SizedBox(
              height: 18,
            ),
            CustomTextFormField(
              //controller: productNameEditingController,
              label: 'Description',
              onChanged: (value)
              {
                description = value;
              },
            ),
            const SizedBox(
              height: 18,
            ),
            CustomTextFormField(
              //controller: productNameEditingController,
              label: 'Price',
              onChanged: (value)
              {
                price = value;
              },
            ),
            const SizedBox(
              height: 18,
            ),
            CustomTextFormField(
              //controller: productNameEditingController,
              label: 'Image',
              onChanged: (value)
              {
                image = value;
              },
            ),
            const SizedBox(
              height: 22,
            ),
            const CustomButton(
              title: 'Update',
            ),
          ],
        ),
      ),
    );
  }
}
