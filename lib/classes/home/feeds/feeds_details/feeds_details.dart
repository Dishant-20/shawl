import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shawl/headers/appbar/appbar.dart';
import 'package:shawl/headers/utils/utils.dart';

class FeedsDetailsScreen extends StatefulWidget {
  const FeedsDetailsScreen({super.key});

  @override
  State<FeedsDetailsScreen> createState() => _FeedsDetailsScreenState();
}

class _FeedsDetailsScreenState extends State<FeedsDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarScreen(
        bool_back_hide: true,
        str_navigation_title: 'Feeds details',
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            color: Colors.amber[600],
            width: MediaQuery.of(context).size.width,
            // height: 120,
            child: Row(
              children: <Widget>[
                const CircleAvatar(
                  radius: 24,
                ),
                //
                Expanded(
                  child: Container(
                    // height: 40,
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: text_with_bold_style(
                            'Dishant Rajput ',
                            Colors.black,
                            16.0,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: text_with_regular_style(
                            'Rider and Developer',
                            Colors.black,
                            12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //
                IconButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print('icons');
                    }
                  },
                  icon: const Icon(
                    Icons.abc,
                  ),
                ),
                //
              ],
            ),
          ),
        ],
      ),
    );
  }
}
