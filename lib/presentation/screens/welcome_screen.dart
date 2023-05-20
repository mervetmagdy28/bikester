import 'package:bikesterr/presentation/components/appbar.dart';
import 'package:bikesterr/presentation/screens/home_page.dart';
import 'package:bikesterr/presentation/screens/login.dart';
import 'package:bikesterr/presentation/screens/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  // @override
  // void initState() async{
  //   if (FirebaseAuth.instance.currentUser != null) {
  //    await Get.to(()=>HomePage());
  //   }
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: MyAppbar(
      //   showMenuIcon: false,
      // ),
      body: Form(
        child: Stack(children: [
          Container(
            // width: double.infinity,
            // height: double.infinity,
            child: Image.asset('assets/bikeMount.jpg',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill),
          ),
          Container(
            margin: EdgeInsets.all(30),
            alignment: Alignment.topCenter,
            child: const Text(
              'Bikester',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                letterSpacing: 1.5,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => Login());
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const Login()),
                    // );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromRGBO(4, 42, 80, .6)),
                    elevation: MaterialStateProperty.all(5),
                  ),
                  child: const Text(
                    'LOG IN',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => Register());
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const Register()),
                    // );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromRGBO(159, 159, 161, .6)),
                    elevation: MaterialStateProperty.all(5),
                  ),
                  child: const Text(
                    'SIGN UP',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ]),
      ),
    );
  }
}
