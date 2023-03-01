import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shawl/classes/home/feeds/feeds.dart';

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:shawl/headers/utils/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _pageController = PageController(initialPage: 0);

  int maxCount = 5;

  /// widget list
  final List<Widget> bottomBarPages = [
    // const Page1(),
    const FeedsScreen(),
    const Page2(),
    const Page3(),
    const Page4(),
    const Page5(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
          bottomBarPages.length,
          (index) => bottomBarPages[index],
        ),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
              pageController: _pageController,
              color: Colors.white,
              showLabel: true,
              notchColor: Colors.white,
              bottomBarItems: const [
                BottomBarItem(
                    inActiveItem: Icon(
                      Icons.home_filled,
                      color: Colors.black12,
                    ),
                    activeItem: Icon(
                      Icons.home_filled,
                      color: Colors.black,
                    ),
                    itemLabel: 'Home'),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.star,
                    color: Colors.black12,
                  ),
                  activeItem: Icon(
                    Icons.star,
                    color: Colors.black,
                  ),
                  itemLabel: 'Page 2',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.person,
                    color: Colors.black12,
                  ),
                  activeItem: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  itemLabel: 'Page 5',
                ),

                ///svg example
                // BottomBarItem(
                //   inActiveItem: Image.asset(
                //     'assets/search_icon.svg',
                //     color: Colors.blueGrey,
                //   ),
                //   activeItem: Image.asset(
                //     'assets/search_icon.svg',
                //     color: Colors.white,
                //   ),
                //   itemLabel: 'Page 3',
                // ),
                /*
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.settings,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.settings,
                    color: Colors.pink,
                  ),
                  itemLabel: 'Page 4',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.person,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.person,
                    color: Colors.yellow,
                  ),
                  itemLabel: 'Page 5',
                ),*/
              ],
              onTap: (index) {
                /// control your animation using page controller
                _pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeIn,
                );
              },
            )
          : null,
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.yellow, child: const Center(child: Text('Page 1')));
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.green, child: const Center(child: Text('Page 2')));
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red, child: const Center(child: Text('Page 3')));
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue, child: const Center(child: Text('Page 4')));
  }
}

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.lightGreenAccent,
        child: const Center(child: Text('Page 4')));
  }
}
