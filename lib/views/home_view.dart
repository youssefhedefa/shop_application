import 'package:flutter/material.dart';
import 'package:shop_application/views/widgets/custom_appbar.dart';
import 'package:shop_application/views/widgets/custom_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:const CustomAppBar(),
      body: Padding(
        padding:const EdgeInsetsDirectional.only(top: 65,start: 16,end: 16,),
        child: GridView.builder(
          physics:const BouncingScrollPhysics(),
          clipBehavior: Clip.none,
            gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 18,
              mainAxisExtent: 200,
            ),
            itemBuilder:(context,index)=> const CustomCard(),
          itemCount: 20,
        ),
      ),
    );
  }
}
