import 'package:flutter/material.dart';
import 'package:shawl/headers/appbar/appbar.dart';
import 'package:shawl/headers/utils/utils.dart';

class FeedsScreen extends StatefulWidget {
  const FeedsScreen({super.key});

  @override
  State<FeedsScreen> createState() => _FeedsScreenState();
}

class _FeedsScreenState extends State<FeedsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBarScreen(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Colors.black87,
          /*gradient: LinearGradient(
            colors: [
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
          ),*/
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                // margin: const EdgeInsets.all(10.0),
                // color: const Color.fromARGB(255, 222, 134, 164),
                color: Colors.black, //black54,
                // width: 48.0,
                height: 100.0,
              ),
              //
              ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                // scrollDirection,
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10.0),
                    color: Colors.transparent,
                    width: MediaQuery.of(context).size.width,
                    // height: 48.0,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            //text
                            Expanded(
                              child: text_with_regular_style(
                                'Dishant Rajput',
                                Colors.white,
                                16.0,
                              ),
                            ),
                            //
                            const Icon(
                              Icons.abc,
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
                            child: text_with_regular_style(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                              Colors.white,
                              14.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
