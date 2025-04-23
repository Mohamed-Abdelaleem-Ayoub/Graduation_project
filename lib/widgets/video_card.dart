import 'package:flutter/material.dart';
import 'package:graduation_project/models/vodeo_model.dart';
import 'package:graduation_project/pages/video_player_page.dart';
//import 'package:graduation_project/pages/video_player_page.dart';

class VideoCard extends StatelessWidget {
  final YoutubeVideoModel videoModel;
  const VideoCard({super.key, required this.videoModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return VideoPlayerPage(youtubeUrl: videoModel.url);
            },
          ),
        );
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 8,
              left: 8,
              right: 8,
              bottom: 16,
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1575936123452-b67c3203c357?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  ),
                ),
              ),

              child: const Icon(Icons.play_circle_fill_rounded, weight: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                textDirection: TextDirection.rtl,

                videoModel.title,
                textAlign: TextAlign.start,

                maxLines: 2,
                style: const TextStyle(color: Color(0xff000000)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
