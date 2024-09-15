// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ABC_SONG extends StatefulWidget {
  ABC_SONG({super.key});

  @override
  State<ABC_SONG> createState() => _ABC_SONGState();
}

class _ABC_SONGState extends State<ABC_SONG> {
  late FlickManager flickManager;

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
                        'assets/videos/abc_song.mp4'))),
          ),
        ));
  }
}
