import 'package:flutter/material.dart';
import 'package:tikodc/composant/video_player/video_player_component.dart';

const List<Map<String, dynamic>> data = [
  {
    "media": "assets\video\video-1.mp4",
  },
  {
    "media": "assets\video\video-2.mp4",
  },
  {
    "media": "assets\video\video-3.mp4",
  }
];

class Accueil extends StatelessWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: const [
          VideoPlayerComponent(),
          VideoPlayerComponent(),
          VideoPlayerComponent(),
        ],
      ),
    );
  }
}
