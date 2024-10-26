import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  Categories({this.color, required this.text,this.onTap});
 final String text;
 int ? color = 0xff7665;
 
 VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 24),
        height: 75,
        width: double.infinity,
        
        color: Color(color!),
        child: Text(
          text!,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
