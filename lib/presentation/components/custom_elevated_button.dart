import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({Key? key, required this.onPressed, required this.textButton, required this.color}) : super(key: key);
  final Function() onPressed;
  final String textButton;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: onPressed,
      style:  ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(250, 40)),
        backgroundColor: MaterialStateProperty.all(color),
        elevation: MaterialStateProperty.all(5),
      ),
      child: Text(
        textButton,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
          color: Colors.white,
        ),
      ),
    );
  }
}
