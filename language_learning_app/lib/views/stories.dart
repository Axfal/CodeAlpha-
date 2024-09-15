// ignore_for_file: prefer_const_constructors

import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class StoryScreen extends StatefulWidget {
  const StoryScreen({super.key});

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_outlined,
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: FlickVideoPlayer(
                flickManager: FlickManager(
                    videoPlayerController: VideoPlayerController.asset(
                        'assets/videos/story.mp4'))),
          ),
        ));
  }
}
