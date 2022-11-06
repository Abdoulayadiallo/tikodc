import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BookmarkWidget extends StatelessWidget {
  final int count;
  final Function()? onTap;

  const BookmarkWidget({Key? key, required this.count, this.onTap})
      : super(key: key);

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
                  onPressed: onTap,
                  icon: const Icon(
                    Icons.bookmark,
                    color: Colors.white38,
                    size: 45.0,
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            NumberFormat.compact().format(count),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w300,
            ),
          ),
        )
      ],
    );
  }
}
