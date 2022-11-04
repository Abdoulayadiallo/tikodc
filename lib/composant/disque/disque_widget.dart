import 'package:flutter/material.dart';

class DisqueWidget extends StatelessWidget {
  final Function()? onTap;

  const DisqueWidget({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: ClipOval(
            child: Container(
              height: 45,
              width: 45,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: const DecorationImage(
                  image: AssetImage("assets/images/disc_icon.png"),
                ),
              ),
              child: Image.asset("assets/images/tiktok_icon.png"),
            ),
          ),
        ),
      ],
    );
  }
}
