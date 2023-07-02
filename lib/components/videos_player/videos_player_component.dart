import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerComponent extends StatefulWidget {
  final String media;
  const VideoPlayerComponent({super.key, required this.media});

  @override
  State<VideoPlayerComponent> createState() => _VideoPlayerComponentState();
}

class _VideoPlayerComponentState extends State<VideoPlayerComponent> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.media)
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(children: [
        _controller.value.isInitialized
            ? SizedBox(
                width: _controller.value.size.width,
                height: _controller.value.size.height,
                child: VideoPlayer(_controller))
            : Container(),
        Positioned(
          left: 20,
          right: 100,
          bottom: 100.0,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text("@username",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: .7)),
                ),
                GestureDetector(
                  onTap: () {
                    print("shox more");
                  },
                  child: const Text(
                    "Sint duis eiusmod exercitation duis qui amet magna veniam ex voluptate ex.",
                    style: TextStyle(
                        color: Colors.white, letterSpacing: .7, height: 1.5),
                    maxLines: 2,
                  ),
                )
              ]),
        )
      ]),
    );
  }
}
