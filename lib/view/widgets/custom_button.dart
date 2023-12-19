import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.size,
      required this.buttonText,
      required this.onTap});

  final Size size;
  String buttonText;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(25),
      splashColor: const Color.fromARGB(255, 241, 4, 4).withOpacity(.6),
      onTap: onTap,
      child: Ink(
        width: size.width * .55,
        height: size.height * .065,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 254, 97, 86),
              Color.fromARGB(255, 255, 18, 1),
              Color.fromARGB(255, 224, 47, 34),
            ],
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
          ),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 214, 62, 20).withOpacity(0.25),
              spreadRadius: 5,
              blurRadius: 10,
              offset: const Offset(5, 5),
            ),
          ],
        ),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
