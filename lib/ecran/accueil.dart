import 'package:flutter/material.dart';
import 'package:tikodc/ecran/profile.dart';

import '../composant/feed/feed_component.dart';

const List<Map<String, dynamic>> data = [
  {
    "profile": {
      "username": "Djobrin",
      "avatar": "assets/images/image-1.jpg",
    },
    "media": "assets/videos/video-1.mp4",
    "description": "Lorem ipsum dolor sit amet,",
    "comment": 234,
    "like": 9089,
    "bookmark": 9,
    "share": 89,
  },
  {
    "profile": {
      "username": "Alasko",
      "avatar": "assets/images/image-2.jpg",
    },
    "media": "assets/videos/video-2.mp4",
    "description": "consectetur adipiscing elit",
    "comment": 4340,
    "like": 5089,
    "bookmark": 59,
    "share": 589,
  },
  {
    "profile": {
      "username": "King",
      "avatar": "assets/images/image-3.jpg",
    },
    "media": "assets/videos/video-3.mp4",
    "description": "sed do eiusmod tempor incididunt",
    "comment": 834,
    "like": 989,
    "bookmark": 8,
    "share": 98,
  },
  {
    "profile": {
      "username": "Queen",
      "avatar": "assets/images/image-4.jpg",
    },
    "media": "assets/videos/video-4.mp4",
    "description": "ut labore et dolore magna aliqua",
    "comment": 434,
    "like": 789,
    "bookmark": 789,
    "share": 79,
  }
];

class Accueil extends StatefulWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    PageView(
        scrollDirection: Axis.vertical,
        children: data.map((item) {
          return FeedComponent(
            item: item,
          );
        }).toList()),
    const Center(
      child: Text('PLUS'),
    ),
    const Center(
      child: Text('PLUS'),
    ),
    const Center(
      child: Text('INBOX'),
    ),
    const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      extendBody: true,
      // body: PageView(
      //   scrollDirection: Axis.vertical,
      //   children: data.map((item) {
      //     return FeedComponent(
      //       item: item,
      //     );
      //   }).toList(),
      // children: [
      //   Profile(),
      // ],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
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
