import 'package:flutter/material.dart';
import 'package:tikodc/composant/profile/profile_component.dart';
import 'package:tikodc/composant/video_player/video_player_component.dart';

import '../sidebar/sidebar_component.dart';

class FeedComponent extends StatelessWidget {
  final Map<String, dynamic> item;
  const FeedComponent({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        VideoPlayerComponent(
          media: item['media'],
        ),
        Positioned(
          bottom: 100.0,
          left: 20.0,
          right: 100.0,
          child: ProfileComponent(
            item: item,
          ),
        ),
        Positioned(
          right: 10.0,
          bottom: 100.0,
          child: SidebarComponent(
            item: item,
          ),
        )
      ],
    );
  }
}
