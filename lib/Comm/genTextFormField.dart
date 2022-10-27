import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class GetTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintName;
  final IconData icon;
  final bool isObscureText;
  final TextInputType textInputType;

  const GetTextFormField({Key? key,
    required this.controller,
    required this.hintName,
    required this.icon,
    this.isObscureText = false,
    this.textInputType = TextInputType.name,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(
          top: 10.0,
          left: 20,
          right: 20
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30)
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        obscureText: isObscureText,
        keyboardType: textInputType,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)
            ),
            borderSide: BorderSide(color: Colors.lightGreen
            ),
          ),
          prefixIcon: Icon(
              icon
          ),
          hintText: hintName,
          fillColor: CupertinoColors.systemGrey6,
          filled: true,
        ),
      ),
    );
  }
}
