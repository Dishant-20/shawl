import 'package:flutter/material.dart';
import 'package:shawl/headers/utils/utils.dart';

class AppBarScreen extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  AppBarScreen({Key? key})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: text_with_regular_style(
        'Home',
        Colors.black,
        14.0,
      ),
      // leading: IconButton(
      //   icon: const Icon(Icons.arrow_back_ios),
      //   onPressed: () => Navigator.of(context).pop(),
      // ),
      automaticallyImplyLeading: false,
      backgroundColor: const Color.fromRGBO(
        // 108, //237, //106, //88,
        // 216, //164, //72, //56,
        // 238, //203, //52, //30,
        // decided
        166, //102,
        247, //100,
        235, //115,
        1,
      ),
    );
  }
}
