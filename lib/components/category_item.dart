import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.text,this.color,this.onTap});
  String? text ;
  Color? color ;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        color: color,
        width: double.infinity,
        height: 70.0,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 17.0,
          ),
          child: Text(
            text!,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
