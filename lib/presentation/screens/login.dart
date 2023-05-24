import 'package:bikesterr/domain/controllers/auth_controller.dart';
import 'package:bikesterr/presentation/components/appbar.dart';
import 'package:bikesterr/presentation/components/custom_text_field.dart';
import 'package:bikesterr/presentation/components/my_textfield.dart';
import 'package:bikesterr/presentation/screens/home_screens/profile.dart';
import 'package:bikesterr/presentation/screens/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../components/custom_elevated_button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  bool? check2 = false;
  var authCont = Get.put(AuthController());
  var emailCont = TextEditingController();
  var passwordCont = TextEditingController();

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
            child: Lottie.network('https://assets6.lottiefiles.com/packages/lf20_zXGe10eVTT.json',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.fromLTRB(0, 200, 0, 0),
              width: 300,
              height: 350,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(233, 233, 235, .85),
                border: Border.all(width: 2),
                borderRadius: const BorderRadius.all(Radius.circular(35)),
              ),
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
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
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: CheckboxListTile(
                              activeColor: Colors.orange,
                              value: check2,
                              controlAffinity: ListTileControlAffinity
                                  .leading, //checkbox at left
                              onChanged: (bool? value) {
                                setState(() {
                                  check2 = value;
                                });
                              },
                              title: const Text(
                                "Remember me",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Forgot Password?",
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 10,
                                  ),
                                )),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomElevatedButton(color: Colors.orange,onPressed: () async{
                        if (_formKey.currentState!.validate())  {
                          await authCont.login(
                              email: emailCont.text,
                              password: passwordCont.text);
                        }
                      },textButton: 'Log In'),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account?",
                          ),
                          TextButton(
                            onPressed: () {
                              Get.to(() => Register());

                            },
                            child: const Text(
                              "Sign up",style: TextStyle(color: Colors.orange),
                            ),
                          ),
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
