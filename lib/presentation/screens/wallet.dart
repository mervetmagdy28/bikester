import 'package:bikesterr/presentation/components/appbar.dart';
import 'package:bikesterr/presentation/components/drawer.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(),
      drawer: MyDrawer(),
      body: Container(
        color: const Color.fromRGBO(233, 233, 235, 1),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: CircleAvatar(
                radius: 80.0,
                child: Icon(
                  Icons.person,
                  size: 150,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                'Your available balance # EGP ',
                style: TextStyle(
                  color: Color.fromRGBO(209, 199, 202, .9),
                  letterSpacing: 2.0,
                  fontSize: 19.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(209, 199, 202, 50),
                border: Border.all(width: 2, color: Colors.blueAccent),
                borderRadius: const BorderRadius.all(Radius.circular(35)),
              ),
              width: 340,
              height: 440,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Center(
                    child: Text(
                      'ADD MONEY TO MY WALLET',
                      style: TextStyle(
                        color: Color.fromRGBO(233, 233, 235, .9),
                        letterSpacing: 2.0,
                        fontSize: 19.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: SizedBox(
                      width: 250,
                      height: 75,
                      child: OutlinedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromRGBO(209, 199, 202, .9)),
                            elevation: MaterialStateProperty.all(1),
                          ),
                          child: const Text(
                            'Credit Card',
                            style: TextStyle(
                              color: Color.fromRGBO(233, 233, 235, .9),
                              letterSpacing: 1.0,
                              fontSize: 18.0,
                            ),
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: SizedBox(
                      width: 250,
                      height: 75,
                      child: OutlinedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromRGBO(209, 199, 202, .9)),
                            elevation: MaterialStateProperty.all(1),
                          ),
                          child: const Text(
                            'Fawry',
                            style: TextStyle(
                              color: Color.fromRGBO(233, 233, 235, .9),
                              letterSpacing: 1.0,
                              fontSize: 18.0,
                            ),
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: SizedBox(
                      width: 250,
                      height: 75,
                      child: OutlinedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromRGBO(209, 199, 202, .9)),
                            elevation: MaterialStateProperty.all(1),
                          ),
                          child: const Text(
                            'Vodafone cash',
                            style: TextStyle(
                              color: Color.fromRGBO(233, 233, 235, .9),
                              letterSpacing: 1.0,
                              fontSize: 18.0,
                            ),
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
