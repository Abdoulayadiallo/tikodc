import 'package:flutter/material.dart';

class VideoProgressBarComponent extends StatelessWidget {
  final double progress;
  final Function(double position)? onTap;
  const VideoProgressBarComponent(
      {Key? key, required this.progress, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (TapUpDetails details) {
        if (onTap != null) {
          onTap!(double.parse(
              (details.globalPosition.dx / MediaQuery.of(context).size.width)
                  .toStringAsFixed(2)));
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Stack(
          children: [
            Container(
              height: 2,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.5),
              ),
            ),
            Container(
              height: 2,
              width: MediaQuery.of(context).size.width * progress,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.9),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
