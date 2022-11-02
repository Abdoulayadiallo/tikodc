import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tikodc/composant/video_player/video_player_component.dart';

class accueil extends StatelessWidget {
  const accueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('accueil'),
      ),
      body: Center(
        child: const VideoPlayerComponent(),
      ),
    );
  }
}
