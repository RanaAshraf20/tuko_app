import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/numbers.dart';

class Phrases extends StatelessWidget {
  const Phrases({super.key, required this.colorName, required this.item});
  final int colorName;
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Color(colorName),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.jbText,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                Text(
                  item.enText,
                  style: TextStyle(color: Colors.white, fontSize: 14),
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
                final player = AudioPlayer();
                player.play(AssetSource(item.sound));
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
