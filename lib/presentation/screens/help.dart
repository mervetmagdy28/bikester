import 'package:bikesterr/presentation/components/appbar.dart';
import 'package:bikesterr/presentation/components/drawer.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(),
      drawer: MyDrawer(),
      body: Stack(
        children: [
          // Container(
          //   // width: double.infinity,
          //   // height: double.infinity,
          //   child: Image.asset('lib/assets/bikeMount.avif',
          //       width: double.infinity,
          //       height: double.infinity,
          //       fit: BoxFit.fill),
          // ),
          Container(
            color: const Color.fromRGBO(233, 233, 235, .8),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Hi Bikester!',
                  style: TextStyle(
                    color: Color.fromRGBO(209, 199, 202, 50),
                    letterSpacing: 2.0,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 175,
                ),
                Center(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(209, 199, 202, .8),
                      border: Border.all(width: 2, color: Colors.blueAccent),
                      borderRadius: const BorderRadius.all(Radius.circular(35)),
                    ),
                    width: 340,
                    height: 440,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Center(
                          child: Text(
                            'HOW CAN WE HELP',
                            style: TextStyle(
                              color: Color.fromRGBO(233, 233, 235, .8),
                              letterSpacing: 2.0,
                              fontSize: 19.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        Center(
                          child: SizedBox(
                            width: 250,
                            height: 75,
                            child: OutlinedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color.fromRGBO(209, 199, 202, .8)),
                                  elevation: MaterialStateProperty.all(1),
                                ),
                                child: const Text(
                                  'FREQUENLTY ASKED QUESTIONS',
                                  style: TextStyle(
                                    color: Color.fromRGBO(233, 233, 235, .8),
                                    letterSpacing: 1.0,
                                    fontSize: 18.0,
                                  ),
                                )),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Center(
                          child: SizedBox(
                            width: 250,
                            height: 75,
                            child: OutlinedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color.fromRGBO(209, 199, 202, .8)),
                                  elevation: MaterialStateProperty.all(1),
                                ),
                                child: const Text(
                                  'CHAT WITH US',
                                  style: TextStyle(
                                    color: Color.fromRGBO(233, 233, 235, .8),
                                    letterSpacing: 1.0,
                                    fontSize: 18.0,
                                  ),
                                )),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Center(
                          child: SizedBox(
                            width: 250,
                            height: 75,
                            child: OutlinedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color.fromRGBO(209, 199, 202, .8)),
                                  elevation: MaterialStateProperty.all(1),
                                ),
                                child: const Text(
                                  'CALL HOTLINE',
                                  style: TextStyle(
                                    color: Color.fromRGBO(233, 233, 235, .8),
                                    letterSpacing: 1.0,
                                    fontSize: 18.0,
                                  ),
                                )),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
