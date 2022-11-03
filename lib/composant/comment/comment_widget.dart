import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CommentWidget extends StatelessWidget {
  final int count;
  const CommentWidget({Key? key, required this.count}) : super(key: key);

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
                  onPressed: () => print("commentez la video"),
                  icon: const Icon(
                    Icons.comment,
                    color: Colors.white38,
                    size: 45.0,
                  ),
                ),
              ),
            ),
          ),
        ),
        Text(NumberFormat.compact().format(count),
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500))
      ],
    );
  }
}
