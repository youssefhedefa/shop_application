import 'package:flutter/material.dart';
import 'package:shop_application/views/widgets/custom_appbar.dart';
import 'package:shop_application/views/widgets/custom_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: CustomCard(),
      ),
    );
  }
}
