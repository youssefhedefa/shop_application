import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, this.title = '',this.actionWidgets =const [],}) : super(key: key);
  final String title;
  final List<Widget> actionWidgets;
  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
}

class _CustomAppBarState extends State<CustomAppBar> {


  Size get preferredSize => const Size.fromHeight(55);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey[50],
      elevation: 0.0,
      centerTitle: true,
      title: Text(
        widget.title,
        style: const TextStyle(color: Colors.black),
      ),
      actions: widget.actionWidgets,
    );
  }
}

// Widget iconButton()
// {
//   return IconButton(
//     onPressed: () {},
//     icon: const Icon(
//       FontAwesomeIcons.bagShopping,
//       color: Colors.black,
//     ),
//   );
//
// }
