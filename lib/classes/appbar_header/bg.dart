import 'package:flutter/material.dart';

class BGScreen extends StatelessWidget {
  const BGScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        // color: Color.fromRGBO(
        //   236,
        //   182,
        //   180,
        //   1,
        // ),
        gradient: LinearGradient(
          colors: [
            /*Color.fromRGBO(
                  4,
                  4,
                  4,
                  1,
                ),
                // 235 185 191
                Color.fromRGBO(
                  235,
                  185,
                  191,
                  1,
                ),
                //236 184 200
                Color.fromRGBO(
                  236,
                  184,
                  200,
                  1,
                ),
                Color.fromRGBO(
                  32,
                  31,
                  31,
                  1,
                ),
                Color.fromRGBO(
                  63,
                  61,
                  61,
                  1,
                ),*/
            Color.fromRGBO(
              236,
              182,
              180,
              1,
            ),
            // 235 185 191
            Color.fromRGBO(
              235,
              185,
              191,
              1,
            ),
            //236 184 200
            Color.fromRGBO(
              236,
              184,
              200,
              1,
            ),
            Color.fromRGBO(
              236,
              184,
              216,
              1,
            ),
            Color.fromRGBO(
              236,
              184,
              222,
              1,
            ),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }
}
