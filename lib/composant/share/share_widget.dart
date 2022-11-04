import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ShareWidget extends StatelessWidget {
  final int count;
  final Function()? onTap;

  const ShareWidget({Key? key, required this.count, this.onTap})
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
                    Icons.share,
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
        )
      ],
    );
  }
}
