import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final IconData suffixIcon;

  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.controller,
    required this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black54),
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black45,
            offset: Offset(1, 1),
            blurRadius: 5,
          ),
        ],
      ),
      child: TextField(
        style: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 14,
        ),
        controller: controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(15),
          border: InputBorder.none,
          hintText: hintText,
          suffixIcon: GestureDetector(
            onTap: () {},
            child: Icon(suffixIcon),
          ),
        ),
      ),
    );
  }
}
