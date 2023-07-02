import 'package:flutter/material.dart';
import 'package:tiktok_clone/components/videos_player/videos_player_component.dart';

const List<Map<String, dynamic>> data = [
  {
    "profile": {"user": "John Patich"},
    "media": 'assets/videos/video3.mp4',
    "description":
        "Lorem dolor labore id consectetur id anim. Proident sunt non tempor cillum sint id ad ullamco minim Lorem minim mollit. Duis nulla qui adipisicing deserunt eu velit in consequat incididunt ut eiusmod minim. Sit cillum commodo nulla excepteur sint ipsum. Dolore minim proident magna exercitation ipsum est dolor incididunt officia eiusmod anim exercitation minim. Sit incididunt fugiat duis eu in deserunt."
  },
  {
    "profile": {"user": "John Moore"},
    "media": 'assets/videos/video4.mp4',
    "description":
        "Lorem dolor labore id consectetur id anim. Proident sunt non tempor cillum sint id ad ullamco minim Lorem minim mollit. Duis nulla qui adipisicing deserunt eu velit in consequat incididunt ut eiusmod minim. Sit cillum commodo nulla excepteur sint ipsum. Dolore minim proident magna exercitation ipsum est dolor incididunt officia eiusmod anim exercitation minim. Sit incididunt fugiat duis eu in deserunt."
  },
  {
    "profile": {"user": "John Skylar"},
    "media": 'assets/videos/video5.mp4',
    "description":
        "Lorem dolor labore id consectetur id anim. Proident sunt non tempor cillum sint id ad ullamco minim Lorem minim mollit. Duis nulla qui adipisicing deserunt eu velit in consequat incididunt ut eiusmod minim. Sit cillum commodo nulla excepteur sint ipsum. Dolore minim proident magna exercitation ipsum est dolor incididunt officia eiusmod anim exercitation minim. Sit incididunt fugiat duis eu in deserunt."
  },
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
            scrollDirection: Axis.vertical,
            children: data.map((item) {
              return VideoPlayerComponent(media: item["media"]);
            }).toList()));
  }
}
