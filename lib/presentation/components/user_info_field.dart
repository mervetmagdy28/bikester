import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class UserInfoField extends StatelessWidget {
  UserInfoField({
    super.key,
    this.label = " ",
    this.info = " ",
  });

  String? label;
  String? info;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 247, 238, 241),
        border: Border.all(
            width: 1, color: const Color.fromRGBO(209, 199, 202, 50)),
        borderRadius: const BorderRadius.all(Radius.circular(35)),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      width: 320,
      height: 50,
      child: Row(
        children: [
          Text(
            label!,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            info!,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
