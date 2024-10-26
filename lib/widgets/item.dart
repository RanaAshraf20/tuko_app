import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/numbers.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.item, required this.colorName});
  final ItemModel item;
  final int colorName;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Color(colorName),
      child: Row(
        children: [
          Container(color: Color(0xffFFFDE4), child: Image.asset(item.image!)),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.jbText,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  item.enText,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {
                item.playSound();
              },
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 26,
              ),
            ),
          )
        ],
      ),
    );
  }
}
