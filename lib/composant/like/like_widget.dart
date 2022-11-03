import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LikeWidget extends StatelessWidget {
  final int count;
  const LikeWidget({Key? key, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: ClipOval(
            child: Container(
              width: 60,
              height: 60,
              color: Colors.transparent,
              child: Center(
                child: IconButton(
                  onPressed: () => print("Likez la video"),
                  icon: const Icon(
                    Icons.favorite,
                    color: Colors.white38,
                    size: 45.0,
                  ),
                ),
              ),
            ),
          ),
        ),
        Text(
          NumberFormat.compact().format(count),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
