import 'package:flutter/material.dart';
import 'package:graduation_project/widgets/video_card.dart';

class VideoPlayerPage extends StatelessWidget {
  const VideoPlayerPage({super.key});
  static String id = 'VideoPlayer page';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: VideoCard()));
  }
}
