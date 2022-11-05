import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../video_progress_bar/video_progress_bar_component.dart';

class VideoPlayerComponent extends StatefulWidget {
  final String media;

  const VideoPlayerComponent({super.key, required this.media});

  @override
  State<VideoPlayerComponent> createState() => _VideoPlayerComponent();
}

class _VideoPlayerComponent extends State<VideoPlayerComponent> {
  late VideoPlayerController _controller;
  double _position = 0.0;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.media);
    _controller.initialize().then((value) {
      setState(() {});

      _controller.play();
    });
    _controller.addListener(() {
      setState(() {
        _position = double.parse((_controller.value.position.inMilliseconds /
                _controller.value.duration.inMilliseconds)
            .toStringAsFixed(2));
      });
    });
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      _controller.value.isInitialized
          ? SizedBox(
              width: _controller.value.size.width,
              height: _controller.value.size.height,
              child: VideoPlayer(_controller),
            )
          : Container(),
      //
      Positioned(
        bottom: 80.0,
        left: 0.0,
        right: 0.0,
        child: VideoProgressBarComponent(
          progress: _position,
          onTap: (position) {
            _controller.seekTo(Duration(
                milliseconds: (_controller.value.duration.inMilliseconds *
                    position.toInt())));
            setState(() => _position = position);
          },
        ),
      ),
    ]);
  }
}
