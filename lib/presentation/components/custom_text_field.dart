import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField(
      {super.key,
      this.label = " ",
      this.fun,
      this.isPassword = false,
      this.myController});
  String? label;
  String? Function(String?)? fun;
  bool isPassword = false; //flag
  bool passInvisible = true;
  Widget? myIconButton;
  TextEditingController? myController;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
          controller: widget.myController,
          cursorColor: Colors.orange,
          obscureText: widget.isPassword ? widget.passInvisible : false,
          decoration: InputDecoration(

            suffixIcon: widget.isPassword
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        widget.passInvisible = !widget.passInvisible;
                        //toggle
                      });
                    },
                    icon: const Icon(Icons.visibility_off_sharp,color: Colors.orange,))
                : null,
            label: Text(
              widget.label!,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.orange
              ),
            ),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(25)),borderSide: BorderSide(color: Colors.black)),
            focusedBorder:  const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(25)),borderSide: BorderSide(color: Colors.black)),

          ),
          // The validator receives the text that the user has entered.
          validator: widget.fun),
    );
  }
}
