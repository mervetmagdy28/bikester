import 'package:bikesterr/domain/controllers/auth_controller.dart';
import 'package:bikesterr/presentation/screens/home_page.dart';
import 'package:bikesterr/presentation/screens/home_screens/profile.dart';
import 'package:bikesterr/presentation/screens/login.dart';
import 'package:bikesterr/presentation/screens/wallet.dart';
import 'package:bikesterr/presentation/screens/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/help.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({super.key});
  var authCont = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromRGBO(233, 233, 235, 1),
            ),
            child: Center(
              child: CircleAvatar(
                radius: 80.0,
                child: Icon(
                  Icons.person,
                  size: 100,
                ),
              ),
            ),
          ),
          // ListTile(
          //   title: const Text("Profile"),
          //   leading: const Icon(Icons.arrow_circle_right),
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => const Profile()),
          //     );
          //   },
          // ),
          ListTile(
            title: const Text("Wallet"),
            leading: const Icon(Icons.arrow_circle_right),
            onTap: () {
              Get.offAll(() => Wallet());
            },
          ),
          ListTile(
            title: const Text("Trips"),
            leading: const Icon(Icons.arrow_circle_right),
            onTap: () {
              //Navigator.pushNamed(context, '/income');
            },
          ),
          ListTile(
            title: const Text("Nearest station"),
            leading: const Icon(Icons.arrow_circle_right),
            onTap: () {
              Get.offAll(() => HomePage());
            },
          ),
          ListTile(
            title: const Text("Help"),
            leading: const Icon(Icons.arrow_circle_right),
            onTap: () {
              Get.offAll(() => Help());
            },
          ),
          ListTile(
            title: const Text("Log out"),
            leading: const Icon(Icons.arrow_circle_right),
            onTap: () {
              authCont.logOut();
              //FirebaseAuth.instance.signOut();
              Get.offAll(() => Login());
            },
          ),
        ],
      ),
    );
  }
}
