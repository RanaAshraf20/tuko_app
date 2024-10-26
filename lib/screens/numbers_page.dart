import 'package:flutter/material.dart';
import 'package:toku_app/widgets/item.dart';
import 'package:toku_app/models/numbers.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<ItemModel> nums = const [

  ItemModel(
      sound: 'sounds/numbers/number_one_sound.mp3',
        image: 'assets/images/numbers/number_one.png',
        jbText: 'Ichi',
        enText: 'one'),
  ItemModel(    
      sound: 'sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/numbers/number_two.png',
        jbText: 'Ni',
        enText: 'two'),
  ItemModel(
      sound: 'sounds/numbers/number_three_sound.mp3',
        image: 'assets/images/numbers/number_three.png',
        jbText: 'San',
        enText: 'three'),
  ItemModel(
       
       sound: 'sounds/numbers/number_four_sound.mp3',
        image: 'assets/images/numbers/number_four.png',
        jbText: 'Shi',
        enText: 'four'),
  ItemModel(
      
       sound: 'sounds/numbers/number_five_sound.mp3',
        image: 'assets/images/numbers/number_five.png',
        jbText: 'Go',
        enText: 'five'),
  ItemModel(
    
       sound: 'sounds/numbers/number_six_sound.mp3',
        image: 'assets/images/numbers/number_six.png',
        jbText: 'Roku',
        enText: 'six'),
  ItemModel(
       
       sound: 'sounds/numbers/number_seven_sound.mp3',
        image: 'assets/images/numbers/number_seven.png',
        jbText: 'Shichi',
        enText: 'seven'),
  ItemModel(
     
       sound: 'sounds/numbers/number_eight_sound.mp3',
        image: 'assets/images/numbers/number_eight.png',
        jbText: 'Hachi',
        enText: 'eight'),
  ItemModel(
       
       sound: 'sounds/numbers/number_nine_sound.mp3',
        image: 'assets/images/numbers/number_nine.png',
        jbText: 'Kyuu',
        enText: 'nine'),
  ItemModel(
      
       sound: 'sounds/numbers/number_ten_sound.mp3',
        image: 'assets/images/numbers/number_ten.png',
        jbText: 'Juu',
        enText: '	ten'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Numbers',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xff49332A),
           iconTheme: IconThemeData(color: Colors.white),
        ),
        body: ListView.builder(
          itemCount: nums.length,
          itemBuilder: (context, index) {
           return Item(
            colorName:  0xffF99531,
              item: nums[index],
            );
          },
        ));
  }

 
}
