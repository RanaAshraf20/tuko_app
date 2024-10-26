import 'package:flutter/material.dart';

import 'package:toku_app/models/numbers.dart';

import 'package:toku_app/widgets/phrases.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<ItemModel> phrase = const [
    ItemModel(
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
        jbText: 'Kōdoku suru koto o wasurenaide kudasai',
        enText: 'dont forget to subscribe'),
    ItemModel(
        sound: 'sounds/phrases/i_love_programming.wav',
        jbText: 'Watashi wa puroguramingu ga daisukidesu',
        enText: 'i love programming'),
    ItemModel(
        sound: 'sounds/phrases/programming_is_easy.wav',

        jbText: 'Puroguramingu wa kantandesu',
        enText: 'programming is easy'),
    ItemModel(
        sound: 'sounds/phrases/where_are_you_going.wav',
    
        jbText: 'Doko ni iku no ',
        enText: 'where are you going?'),
    ItemModel(
        sound: 'sounds/phrases/what_is_your_name.wav',

        jbText: 'Namae wa nandesu ka',
        enText: 'what is your name?'),
    ItemModel(
        sound: 'sounds/phrases/i_love_anime.wav',
   
        jbText: 'Watashi wa anime ga daisukidesu',
        enText: 'i love anime'),
    ItemModel(
        sound: 'sounds/phrases/how_are_you_feeling.wav',
 
        jbText: 'Go kibun wa ikagedesu ka',
        enText: 'how are you feeling?'),
    ItemModel(
        sound: 'sounds/phrases/are_you_coming.wav',

        jbText: 'Kimasuka',
        enText: 'are you coming?'),
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
          itemCount: phrase.length,
          itemBuilder: (context, index) {
            return Phrases(
              colorName: 0xff47A5CB,
              item:phrase[index],
            );
          },
        ));
  }
}
