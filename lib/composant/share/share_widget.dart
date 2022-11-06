import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
          padding: const EdgeInsets.only(bottom: 4.0),
          child: ClipOval(
            child: Container(
              width: 60,
              height: 60,
              color: Colors.transparent,
              child: Center(
                child: IconButton(
                  onPressed: onTap,
                  icon: FaIcon(
                    FontAwesomeIcons.share,
                    color: Colors.white38,
                    size: 35.0,
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
        ),
        SizedBox(
          height: 15.0,
        )
      ],
    );
  }
}
