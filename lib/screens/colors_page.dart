import 'package:flutter/material.dart';
import 'package:toku_app/models/numbers.dart';
import 'package:toku_app/widgets/item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<ItemModel> colorList = const [
   ItemModel(
        
        sound: 'sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png',
        jbText: 'Burakku',
        enText: 'black'),
   ItemModel(
        
        sound: 'sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jbText: 'Chairo',
        enText: 'brown'),
   ItemModel(
        
        sound: 'sounds/colors/dusty yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jbText: 'Hokori paoi kiiro',
        enText: 'dusty yellow'),
   ItemModel(
        
        sound: 'sounds/colors/gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jbText: 'Gure',
        enText: 'gray'),
   ItemModel(
        
        sound: 'sounds/colors/green.wav',
        image: 'assets/images/colors/color_green.png',
        jbText: 'Midori',
        enText: 'green'),
   ItemModel(
        
        sound: 'sounds/colors/red.wav',
        image: 'assets/images/colors/color_red.png',
        jbText: 'Aka',
        enText: 'red'),
   ItemModel(
        
        sound: 'sounds/colors/white.wav',
        image: 'assets/images/colors/color_white.png',
        jbText: 'Shiroi',
        enText: 'white'),
         ItemModel(
        
        sound: 'sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png',
        jbText: 'Burakku',
        enText: 'black'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Colors',
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
        backgroundColor: Color(0xff49332A),
        iconTheme: IconThemeData(
          color: Colors.white
        ),
      ),
      body: ListView.builder(
          itemCount: colorList.length,
          itemBuilder: (context, index) {
            return Item(
              colorName: 0xff7D40A2,
              item: colorList[index],
            );
          }),
    );
  }
}
