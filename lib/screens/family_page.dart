import 'package:flutter/material.dart';

import 'package:toku_app/models/numbers.dart';
import 'package:toku_app/widgets/item.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});
  final List<ItemModel> person = const [
    ItemModel(
        sound: 'sounds/family_members/father.wav',
        image: 'assets/images/family_members/family_father.png',
        jbText: 'Chichi',
        enText: 'father'),
    ItemModel(
        sound: 'sounds/family_members/daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jbText: 'Musume',
        enText: 'daughter'),
   ItemModel(
        sound: 'sounds/family_members/grand father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jbText: 'Ojiisan',
        enText: 'grand father'),
   ItemModel(
        sound: 'sounds/family_members/mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        jbText: 'Hahaoya',
        enText: 'mother'),
   ItemModel(
        sound: 'sounds/family_members/grand mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        jbText: 'Sobo',
        enText: 'grand mother'),
   ItemModel(
        sound: 'sounds/family_members/older bother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jbText: 'Oniisan',
        enText: 'older bother'),
   ItemModel(
        sound: 'sounds/family_members/older sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jbText: 'Ane',
        enText: 'older sister'),
   ItemModel(
        sound: 'sounds/family_members/son.wav',
        image: 'assets/images/family_members/family_son.png',
        jbText: 'Musuko',
        enText: 'son'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Family Members',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xff49332A),
          iconTheme: IconThemeData(color: Colors.white),
        ),
         body: ListView.builder(
          itemCount: person.length,
          itemBuilder: (context, index) {
           return Item(
            colorName:  0xff528032,
              item: person[index],
            );
          },
        ));
  }
}