import 'package:flutter/material.dart';
import 'package:shop_application/views/widgets/custom_appbar.dart';
import 'package:shop_application/views/widgets/custom_future_list_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding:  EdgeInsetsDirectional.only(
          top: 65,
          start: 16,
          end: 16,
        ),
        child: CustomFutureListBuilder(),
      ),
    );
  }
}


