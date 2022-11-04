import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final Map<String, dynamic> profile;
  const AvatarWidget({Key? key, required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            bottom: 10,
          ),
          child: GestureDetector(
            onTap: () => print("Go to user profile"),
            child: Container(
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black54,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                  profile["avatar"],
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => print("follow"),
          child: const CircleAvatar(
            backgroundColor: Colors.pink,
            radius: 15.0,
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
