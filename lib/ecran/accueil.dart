import 'package:flutter/material.dart';
import 'package:tikodc/composant/feed/feed_component.dart';

const List<Map<String, dynamic>> data = [
  {
    "profile": {
      "username": "Djobrin",
      "avatar": "https://i.pravatar.cc/150?img=1",
    },
    "media": "assets/videos/video-1.mp4",
    "description": "Lorem ipsum dolor sit amet,",
    "comment": 234,
    "like": 9089,
  },
  {
    "profile": {
      "username": "Alasko",
      "avatar": "https://i.pravatar.cc/150?img=2",
    },
    "media": "assets/videos/video-2.mp4",
    "description": "consectetur adipiscing elit",
    "comment": 4340,
    "like": 5089,
  },
  {
    "profile": {
      "username": "King",
      "avatar": "https://i.pravatar.cc/150?img=3",
    },
    "media": "assets/videos/video-3.mp4",
    "description": "sed do eiusmod tempor incididunt",
    "comment": 834,
    "like": 989,
  },
  {
    "profile": {
      "username": "Queen",
      "avatar": "https://i.pravatar.cc/150?img=4",
    },
    "media": "assets/videos/video-4.mp4",
    "description": "ut labore et dolore magna aliqua",
    "comment": 434,
    "like": 789,
  }
];

class Accueil extends StatelessWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        scrollDirection: Axis.vertical,
        children: data.map((item) {
          return FeedComponent(
            item: item,
          );
        }).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          print(value);
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF141518),
        elevation: 0,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flash_on),
            label: "Now",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Add",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.comment),
            label: "Boite de reception",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "profile",
          ),
        ],
      ),
    );
  }
}
