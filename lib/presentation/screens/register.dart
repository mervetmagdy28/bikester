import 'package:bikesterr/presentation/components/appbar.dart';
import 'package:bikesterr/presentation/screens/login.dart';
import 'package:bikesterr/presentation/components/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../domain/controllers/auth_controller.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  var authCont = Get.put(AuthController());
  var emailCont = TextEditingController();
  var passwordCont = TextEditingController();
  var userNameCont = TextEditingController();
  var dateofBirthCont = TextEditingController();
  var phoneNumberCont = TextEditingController();
  var emergencyNumberCont = TextEditingController();
  var bloodGroupCont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(
        showMenuIcon: false,
      ),
      body: Form(
        key: _formKey,
        child: Stack(children: [
          Container(
            // width: double.infinity,
            // height: double.infinity,
            child: Image.asset('assets/bikeSharing.jpg',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(233, 233, 235, .85),
                border: Border.all(width: 2),
                borderRadius: const BorderRadius.all(Radius.circular(35)),
              ),
              child: SingleChildScrollView(
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomTextField(
                        myController: userNameCont,
                        label: "username",
                        fun: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter valid username';
                          }
                          return null;
                        },
                      ),
                      CustomTextField(
                        myController: emailCont,
                        label: "email",
                        fun: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              !value.contains("@") ||
                              !value.contains(".com")) {
                            return 'Please enter valid email';
                          }
                          return null;
                        },
                      ),
                      CustomTextField(
                        myController: dateofBirthCont,
                        label: "Date of Birth",
                        fun: (value) {
                          if (value == null || value.length < 8) {
                            return 'incorrect password';
                          }
                          return null;
                        },
                      ),
                      CustomTextField(
                        myController: phoneNumberCont,
                        label: "Contact number",
                        fun: (value) {
                          if (value == null ||
                              value.length < 11 ||
                              value.length > 11) {
                            return 'incorrect number';
                          }
                          return null;
                        },
                      ),
                      CustomTextField(
                        myController: emergencyNumberCont,
                        label: "Emergency number",
                        fun: (value) {
                          if (value == null ||
                              value.length < 11 ||
                              value.length > 11) {
                            return 'incorrect number';
                          }
                          return null;
                        },
                      ),
                      CustomTextField(
                        myController: bloodGroupCont,
                        label: "Blood type",
                        fun: (value) {
                          if (value == null || value.length > 3) {
                            return 'please enter correct blood type';
                          }
                          return null;
                        },
                      ),
                      CustomTextField(
                        myController: passwordCont,
                        label: "password",
                        isPassword: true,
                        fun: (value) {
                          if (value == null || value.length < 8) {
                            return 'incorrect password';
                          }
                          return null;
                        },
                      ),
                      CustomTextField(
                        label: "re-password",
                        isPassword: true,
                        fun: (value) {
                          if (value == null || value.length < 8) {
                            return 'incorrect password';
                          }
                          return null;
                        },
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            authCont.signUp(
                              email: emailCont.text,
                              password: passwordCont.text,
                            )
                              ..then((uid) {
                                authCont.addUser(
                                    userName: userNameCont.text,
                                    dateOfBirth: dateofBirthCont.text,
                                    phoneNumber: phoneNumberCont.text,
                                    emergencyNumber: emergencyNumberCont.text,
                                    bloodGroup: bloodGroupCont.text,
                                    email: emailCont.text,
                                    userID: uid);
                                Get.to(() => Login());
                              })
                              ..onError((error, stackTrace) {});
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromRGBO(4, 42, 80, .9)),
                          elevation: MaterialStateProperty.all(5),
                        ),
                        child: const Text(
                          'Sign Up',
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "you have an account?",
                          ),
                          TextButton(
                              onPressed: () {
                                Get.to(() => Login());
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => const Login()),
                                // );
                              },
                              child: const Text(
                                "Log in",
                              ))
                        ],
                      )
                    ]),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
