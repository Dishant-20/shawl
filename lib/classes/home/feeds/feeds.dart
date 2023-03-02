import 'dart:math' as math;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:shawl/classes/home/feeds/feeds_details/feeds_details.dart';
import 'package:shawl/headers/appbar/appbar.dart';
import 'package:shawl/headers/utils/utils.dart';

class FeedsScreen extends StatefulWidget {
  const FeedsScreen({super.key});

  @override
  State<FeedsScreen> createState() => _FeedsScreenState();
}

class _FeedsScreenState extends State<FeedsScreen> {
  //
  var text_long =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarScreen(
        bool_back_hide: false,
        str_navigation_title: 'Home',
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          // color: Colors.black87,
          // color: Color.fromRGBO(
          //   114, //96,
          //   80, //66,
          //   60, //42,
          //   1,
          // ),

          // color: Colors.grey[400]
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(
                164, //236,
                247, //182,
                235, //180,
                1,
              ),
              // 235 185 191
              Color.fromRGBO(
                162, //235,
                244, //185,
                234, //191,
                1,
              ),
              //236 184 200
              Color.fromRGBO(
                160, //236,
                244, //184,
                236, //200,
                1,
              ),
              Color.fromRGBO(
                155, //236,
                242, //184,
                236, //216,
                1,
              ),
              Color.fromRGBO(
                146, //236,
                237, //184,
                236, //222,
                1,
              ),
              Color.fromRGBO(
                140, //236,
                234, //184,
                236, //222,
                1,
              ),
              Color.fromRGBO(
                130, //236,
                230, //184,
                236, //222,
                1,
              ),
              Color.fromRGBO(
                120, //236,
                220, //184,
                238, //222,
                1,
              ),
              Color.fromRGBO(
                112, //236,
                218, //184,
                238, //222,
                1,
              ),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                // scrollDirection,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      if (kDebugMode) {
                        print('call hit');
                      }
                      //
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FeedsDetailsScreen(),
                        ),
                      );
                      //
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10.0),
                      color: Colors.transparent,
                      width: MediaQuery.of(context).size.width,
                      // height: 48.0,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: Color(
                                        (math.Random().nextDouble() * 0xFFFFFF)
                                            .toInt())
                                    .withOpacity(0.6),
                                // backgroundColor: Color.fromRGBO(
                                //   108, //166, //243,
                                //   216, //  247, //203,
                                //   238, //235, //217,
                                //   1,
                                // ),
                                child: Icon(getRandomIcon()),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              //text
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
                                    print('more button click');
                                  }
                                  //
                                  _showMyDialog();
                                  //
                                },
                                icon: const Icon(
                                  Icons.more_horiz,
                                  color: Colors.black,
                                  size: 14,
                                ),
                              )
                            ],
                          ),
                          //
                          Center(
                            child: Container(
                              margin: const EdgeInsets.only(
                                top: 10.0,
                                right: 10,
                                left: 40,
                              ),
                              color: Colors.transparent,
                              width: MediaQuery.of(context).size.width,
                              // height: 48.0,
                              child: ReadMoreText(
                                //
                                text_long,
                                //
                                trimLines: 5,
                                colorClickableText: Colors.pink,
                                trimMode: TrimMode.Line,
                                trimCollapsedText: 'Show more',
                                postDataTextStyle: const TextStyle(
                                  color: Colors.blue,
                                ),
                                style: const TextStyle(
                                  fontFamily: 'Avenir',
                                  color: Colors.black,
                                ),
                                trimExpandedText: 'Show less',
                                lessStyle: const TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                moreStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          //
                          Container(
                            margin: const EdgeInsets.only(top: 30, left: 30.0),
                            color: Colors.transparent,
                            width: MediaQuery.of(context).size.width,
                            height: 40,
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    if (kDebugMode) {
                                      print('like icon clicked');
                                    }
                                  },
                                  icon: const Icon(
                                    Icons.arrow_circle_up_outlined,
                                    color: Color.fromRGBO(
                                      88,
                                      85,
                                      75,
                                      1,
                                    ),
                                  ),
                                ),
                                text_with_bold_style(
                                  '14k',
                                  const Color.fromARGB(
                                    255,
                                    89,
                                    114,
                                    121,
                                  ),
                                  14.0,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  // margin: const EdgeInsets.all(10.0),
                                  color: const Color.fromARGB(
                                    255,
                                    115,
                                    199,
                                    186,
                                  ),
                                  width: 1,
                                  height: 30,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                IconButton(
                                  onPressed: () {
                                    if (kDebugMode) {
                                      print('like icon clicked');
                                    }
                                  },
                                  icon: const Icon(
                                    Icons.arrow_circle_down_outlined,
                                    color: Color.fromRGBO(
                                      88,
                                      85,
                                      75,
                                      1,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  // margin: const EdgeInsets.all(10.0),
                                  color: const Color.fromARGB(
                                    255,
                                    115,
                                    199,
                                    186,
                                  ),
                                  width: 1,
                                  height: 30,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                IconButton(
                                  onPressed: () {
                                    if (kDebugMode) {
                                      print('comment icon clicked');
                                    }
                                  },
                                  icon: const Icon(
                                    Icons.forum_outlined,
                                    color: Color.fromRGBO(
                                      88,
                                      85,
                                      75,
                                      1,
                                    ),
                                  ),
                                ),
                                text_with_regular_style(
                                  '12',
                                  Colors.black,
                                  12.0,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 20.0),
                            color: Colors.grey,
                            width: MediaQuery.of(context).size.width,
                            height: 0.4,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }

  //
  IconData getRandomIcon() {
    final List<int> points = <int>[0xe0b0, 0xe0b1, 0xe0b2, 0xe0b3, 0xe0b4];
    final math.Random random = math.Random();
    const String chars = '0123456789ABCDEF';
    int length = 3;
    String hex = '0xe';
    while (length-- > 0) hex += chars[(random.nextInt(16)) | 0];
    return IconData(int.parse(hex), fontFamily: 'MaterialIcons');
  }

  //
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color.fromRGBO(
            166, //243, //237,
            247, //203, //164,
            235, //217, //203,
            1,
          ),
          title: text_with_bold_style(
            '',
            Colors.black,
            0.0,
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                //
                Row(
                  children: [
                    const Icon(
                      Icons.block,
                      size: 22,
                      color: Colors.red,
                    ),
                    const SizedBox(
                      width: 14.0,
                    ),
                    text_with_regular_style(
                      'Block user',
                      Colors.black,
                      16.0,
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    color: Colors.black,
                    width: MediaQuery.of(context).size.width,
                    height: 0.6,
                  ),
                ),
                //
                Row(
                  children: [
                    const Icon(
                      Icons.hide_image_rounded,
                      size: 22,
                      color: Colors.red,
                    ),
                    const SizedBox(
                      width: 14.0,
                    ),
                    text_with_regular_style(
                      'Hide comment',
                      Colors.black,
                      16.0,
                    ),
                  ],
                ),

                //
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: text_with_bold_style(
                'dismiss',
                Colors.black,
                16.0,
              ),
              onPressed: () async {
                //
                Navigator.pop(context);
                //

                //
              },
            ),
          ],
        );
      },
    );
  }
  //
}
