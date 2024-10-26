import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String sound;
  final String? image;
  final String jbText;
  final String enText;
  const ItemModel(
      {required this.sound,
      this.image,
      required this.jbText,
      required this.enText});

  playSound() {
    AudioPlayer player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
