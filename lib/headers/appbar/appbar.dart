// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:shawl/headers/utils/utils.dart';

class AppBarScreen extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  final bool bool_back_hide;
  final String str_navigation_title;

  AppBarScreen(
      {Key? key,
      required this.bool_back_hide,
      required this.str_navigation_title})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return (bool_back_hide == true)
        ? AppBar(
            title: text_with_regular_style(
              str_navigation_title,
              Colors.black,
              14.0,
            ),
            leading: IconButton(
              icon: const Icon(
                Icons.chevron_left_rounded,
                color: Colors.black,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            automaticallyImplyLeading: bool_back_hide,
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
          )
        : AppBar(
            title: text_with_regular_style(
              str_navigation_title,
              Colors.black,
              14.0,
            ),

            // leading: IconButton(
            //   icon: const Icon(Icons.arrow_back_ios),
            //   onPressed: () => Navigator.of(context).pop(),
            // ),

            automaticallyImplyLeading: bool_back_hide,
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
