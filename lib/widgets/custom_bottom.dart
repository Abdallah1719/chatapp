import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  CustomBotton({super.key, required this.text,required this.ontap});
  String text;
  VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}
