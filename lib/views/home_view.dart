import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop_application/views/widgets/custom_appbar.dart';
import 'package:shop_application/views/widgets/custom_future_list_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Trending',
        actionWidgets: [
          IconButton(
            onPressed: (){},
            icon: const Icon(
              FontAwesomeIcons.bagShopping,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: const Padding(
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


