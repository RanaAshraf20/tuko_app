import 'package:flutter/material.dart';
import 'package:toku_app/screens/colors_page.dart';
import 'package:toku_app/screens/family_page.dart';
import 'package:toku_app/screens/phrases_page.dart';
import 'package:toku_app/widgets/categories.dart';
import 'package:toku_app/screens/numbers_page.dart';
import 'package:toku_app/widgets/item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Toku',
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
        backgroundColor: Color(0xff49332A),
      ),
      body: Column(
        children: [
          Categories(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return NumbersPage();
              }));
            },
            text: 'Numbers',
            color: 0xffF99531,
          ),
          Categories(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FamilyPage();
              }));
            },
            text: 'Family Members',
            color: 0xff528032,
          ),
          Categories(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ColorsPage();
              }));
            },
            text: 'Colors',
            color: 0xff7D40A2,
          ),
          Categories(
             onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PhrasesPage();
              }));
            },
            text: 'Phrases',
            color: 0xff47A5CB,
          ),
        ],
      ),
      backgroundColor: Color(0xffFFF4D9),
    );
  }
}
