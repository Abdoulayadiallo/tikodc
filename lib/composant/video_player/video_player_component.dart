import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerComponent extends StatefulWidget {
  final String media;

  const VideoPlayerComponent({super.key, required this.media});

  @override
  State<VideoPlayerComponent> createState() => _VideoPlayerComponent();
}

class _VideoPlayerComponent extends State<VideoPlayerComponent> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.media);
    _controller.initialize().then((value) {
      setState(() {});

      _controller.play();
    });
  }

  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? SizedBox(
            width: _controller.value.size.width,
            height: _controller.value.size.height,
            child: VideoPlayer(_controller),
          )
        : Container();
  }
}
