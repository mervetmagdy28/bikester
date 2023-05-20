import 'package:bikesterr/presentation/components/appbar.dart';
import 'package:bikesterr/presentation/components/drawer.dart';
import 'package:bikesterr/presentation/screens/help.dart';
import 'package:bikesterr/presentation/screens/home_screens/profile.dart';
import 'package:bikesterr/presentation/screens/wallet.dart';
import 'package:bikesterr/presentation/screens/welcome_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';

class Review extends StatefulWidget {
  const Review({super.key});

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  var _myColorOne = Colors.grey;
  var _myColorTwo = Colors.grey;
  var _myColorThree = Colors.grey;
  var _myColorFour = Colors.grey;
  var _myColorFive = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppbar(),
        drawer: MyDrawer(),
        body: Container(
          width: 360,
          height: 740,
          color: const Color.fromRGBO(233, 233, 235, .8),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Center(
                  child: Text(
                    'WE HOPE YOU ENJOYED YOUR RIDE WITH BIKESTER!',
                    style: TextStyle(
                      color: Color.fromRGBO(209, 199, 202, 50),
                      letterSpacing: 2.0,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text(
                    'Help us make your coming rides even better',
                    style: TextStyle(
                      color: Color.fromRGBO(209, 199, 202, 50),
                      letterSpacing: 2.0,
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(233, 233, 235, .95),
                    border: Border.all(width: 2, color: Colors.blueAccent),
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'ROUTE SAFETY',
                        style: TextStyle(
                          color: Color.fromRGBO(4, 42, 80, .6),
                          letterSpacing: 1.0,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Container(
                        height: 30,
                        //margin: const EdgeInsets.all(10.0),
                        color: const Color.fromRGBO(233, 233, 235, .8),
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.star),
                              onPressed: () => setState(() {
                                _myColorOne = Colors.orange;
                                _myColorTwo = _myColorTwo;
                                _myColorThree = _myColorTwo;
                                _myColorFour = _myColorTwo;
                                _myColorFive = _myColorTwo;
                              }),
                              color: _myColorOne,
                            ),
                            IconButton(
                              icon: const Icon(Icons.star),
                              onPressed: () => setState(() {
                                _myColorOne = Colors.orange;
                                _myColorTwo = Colors.orange;
                                _myColorThree = Colors.grey;
                                _myColorFour = Colors.grey;
                                _myColorFive = Colors.grey;
                              }),
                              color: _myColorTwo,
                            ),
                            IconButton(
                              icon: const Icon(Icons.star),
                              onPressed: () => setState(() {
                                _myColorOne = Colors.orange;
                                _myColorTwo = Colors.orange;
                                _myColorThree = Colors.orange;
                                _myColorFour = Colors.grey;
                                _myColorFive = Colors.grey;
                              }),
                              color: _myColorThree,
                            ),
                            IconButton(
                              icon: const Icon(Icons.star),
                              onPressed: () => setState(() {
                                _myColorOne = Colors.orange;
                                _myColorTwo = Colors.orange;
                                _myColorThree = Colors.orange;
                                _myColorFour = Colors.orange;
                                _myColorFive = Colors.grey;
                              }),
                              color: _myColorFour,
                            ),
                            IconButton(
                              icon: const Icon(Icons.star),
                              onPressed: () => setState(() {
                                _myColorOne = Colors.orange;
                                _myColorTwo = Colors.orange;
                                _myColorThree = Colors.orange;
                                _myColorFour = Colors.orange;
                                _myColorFive = Colors.orange;
                              }),
                              color: _myColorFive,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(233, 233, 235, .8),
                    border: Border.all(width: 2, color: Colors.blueAccent),
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'ROUTE BIKE FRIENDLY',
                        style: TextStyle(
                          color: Color.fromRGBO(4, 42, 80, .95),
                          letterSpacing: 1.0,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Container(
                        height: 30,
                        //margin: const EdgeInsets.all(10.0),
                        color: const Color.fromRGBO(233, 233, 235, .8),
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.star),
                              onPressed: () => setState(() {
                                _myColorOne = Colors.orange;
                                _myColorTwo = _myColorTwo;
                                _myColorThree = _myColorTwo;
                                _myColorFour = _myColorTwo;
                                _myColorFive = _myColorTwo;
                              }),
                              color: _myColorOne,
                            ),
                            IconButton(
                              icon: const Icon(Icons.star),
                              onPressed: () => setState(() {
                                _myColorOne = Colors.orange;
                                _myColorTwo = Colors.orange;
                                _myColorThree = Colors.grey;
                                _myColorFour = Colors.grey;
                                _myColorFive = Colors.grey;
                              }),
                              color: _myColorTwo,
                            ),
                            IconButton(
                              icon: const Icon(Icons.star),
                              onPressed: () => setState(() {
                                _myColorOne = Colors.orange;
                                _myColorTwo = Colors.orange;
                                _myColorThree = Colors.orange;
                                _myColorFour = Colors.grey;
                                _myColorFive = Colors.grey;
                              }),
                              color: _myColorThree,
                            ),
                            IconButton(
                              icon: const Icon(Icons.star),
                              onPressed: () => setState(() {
                                _myColorOne = Colors.orange;
                                _myColorTwo = Colors.orange;
                                _myColorThree = Colors.orange;
                                _myColorFour = Colors.orange;
                                _myColorFive = Colors.grey;
                              }),
                              color: _myColorFour,
                            ),
                            IconButton(
                              icon: const Icon(Icons.star),
                              onPressed: () => setState(() {
                                _myColorOne = Colors.orange;
                                _myColorTwo = Colors.orange;
                                _myColorThree = Colors.orange;
                                _myColorFour = Colors.orange;
                                _myColorFive = Colors.orange;
                              }),
                              color: _myColorFive,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(233, 233, 235, .8),
                    border: Border.all(width: 2, color: Colors.blueAccent),
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'BIKE',
                        style: TextStyle(
                          color: Color.fromRGBO(4, 42, 80, .95),
                          letterSpacing: 1.0,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Container(
                        height: 30,
                        //margin: const EdgeInsets.all(10.0),
                        color: const Color.fromRGBO(233, 233, 235, .8),
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.star),
                              onPressed: () => setState(() {
                                _myColorOne = Colors.orange;
                                _myColorTwo = _myColorTwo;
                                _myColorThree = _myColorTwo;
                                _myColorFour = _myColorTwo;
                                _myColorFive = _myColorTwo;
                              }),
                              color: _myColorOne,
                            ),
                            IconButton(
                              icon: const Icon(Icons.star),
                              onPressed: () => setState(() {
                                _myColorOne = Colors.orange;
                                _myColorTwo = Colors.orange;
                                _myColorThree = Colors.grey;
                                _myColorFour = Colors.grey;
                                _myColorFive = Colors.grey;
                              }),
                              color: _myColorTwo,
                            ),
                            IconButton(
                              icon: const Icon(Icons.star),
                              onPressed: () => setState(() {
                                _myColorOne = Colors.orange;
                                _myColorTwo = Colors.orange;
                                _myColorThree = Colors.orange;
                                _myColorFour = Colors.grey;
                                _myColorFive = Colors.grey;
                              }),
                              color: _myColorThree,
                            ),
                            IconButton(
                              icon: const Icon(Icons.star),
                              onPressed: () => setState(() {
                                _myColorOne = Colors.orange;
                                _myColorTwo = Colors.orange;
                                _myColorThree = Colors.orange;
                                _myColorFour = Colors.orange;
                                _myColorFive = Colors.grey;
                              }),
                              color: _myColorFour,
                            ),
                            IconButton(
                              icon: const Icon(Icons.star),
                              onPressed: () => setState(() {
                                _myColorOne = Colors.orange;
                                _myColorTwo = Colors.orange;
                                _myColorThree = Colors.orange;
                                _myColorFour = Colors.orange;
                                _myColorFive = Colors.orange;
                              }),
                              color: _myColorFive,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(233, 233, 235, .8),
                    border: Border.all(width: 2, color: Colors.blueAccent),
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'OVERALL EXPERIENCE',
                        style: TextStyle(
                          color: Color.fromRGBO(4, 42, 80, .95),
                          letterSpacing: 1.0,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Container(
                        height: 30,
                        //margin: const EdgeInsets.all(10.0),
                        color: const Color.fromRGBO(233, 233, 235, .8),
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.star),
                              onPressed: () => setState(() {
                                _myColorOne = Colors.orange;
                                _myColorTwo = _myColorTwo;
                                _myColorThree = _myColorTwo;
                                _myColorFour = _myColorTwo;
                                _myColorFive = _myColorTwo;
                              }),
                              color: _myColorOne,
                            ),
                            IconButton(
                              icon: const Icon(Icons.star),
                              onPressed: () => setState(() {
                                _myColorOne = Colors.orange;
                                _myColorTwo = Colors.orange;
                                _myColorThree = Colors.grey;
                                _myColorFour = Colors.grey;
                                _myColorFive = Colors.grey;
                              }),
                              color: _myColorTwo,
                            ),
                            IconButton(
                              icon: const Icon(Icons.star),
                              onPressed: () => setState(() {
                                _myColorOne = Colors.orange;
                                _myColorTwo = Colors.orange;
                                _myColorThree = Colors.orange;
                                _myColorFour = Colors.grey;
                                _myColorFive = Colors.grey;
                              }),
                              color: _myColorThree,
                            ),
                            IconButton(
                              icon: const Icon(Icons.star),
                              onPressed: () => setState(() {
                                _myColorOne = Colors.orange;
                                _myColorTwo = Colors.orange;
                                _myColorThree = Colors.orange;
                                _myColorFour = Colors.orange;
                                _myColorFive = Colors.grey;
                              }),
                              color: _myColorFour,
                            ),
                            IconButton(
                              icon: const Icon(Icons.star),
                              onPressed: () => setState(() {
                                _myColorOne = Colors.orange;
                                _myColorTwo = Colors.orange;
                                _myColorThree = Colors.orange;
                                _myColorFour = Colors.orange;
                                _myColorFive = Colors.orange;
                              }),
                              color: _myColorFive,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(233, 233, 235, .8),
                    border: Border.all(width: 2, color: Colors.blueAccent),
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                  ),
                  width: 500,
                  height: 150,
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    //minLines: 0,
                    maxLines: 5,
                    decoration: const InputDecoration(
                      hintText: 'FeedBack',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                FilledButton(
                  style: const ButtonStyle(
                    alignment: Alignment.center,
                  ),
                  onPressed: () {},
                  child: const Text(
                    'REPORT UNSAFE STREET',
                    style: TextStyle(
                      color: Colors.indigo,
                      letterSpacing: 1.0,
                      fontSize: 8.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'SUBMIT',
                    style: TextStyle(
                      color: Colors.indigo,
                      letterSpacing: 2.0,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
