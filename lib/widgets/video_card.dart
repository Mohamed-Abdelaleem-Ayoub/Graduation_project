import 'package:flutter/material.dart';

//import 'package:graduation_project/pages/video_player_page.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //Navigator.pushNamed(context, VideoPlayerPage.id);
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    'https://s3-alpha-sig.figma.com/img/b31c/8b8d/c342dcc145a24bb21db762a6955b838f?Expires=1745193600&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=iA-ByvvUP2b3zN9gVGoDIrQrSmsS1KsTmm1K8Fq7lo-lNZvlmIUPAQQTUOI1nNmLdwHymh7y5q3Kmcq1Tp22L7Xm0CKcerc-NJDZsyIoANtfoLWK2~3E7IuZ4TnPocAtvtWgOReHwpc171-jGL1wq0hOc9D13GFpBuFiCz1H7nqkha2mzrxPAQ8hAQxkqcY23yOaWPEj8btjBfVIHThLUfdlhF0daQRxxn5SnlQder0mwEAqbh4uzxombVAXZqD~S5~cRuDOi8oNNp~GMh2tnXLdMKczzoxmCqdBFKAGftoGlXi5BEGULPMOOCmrYyiBSmlYjUfcmR8BiIh31EuGXg__',
                  ),
                ),
              ),

              child: const Icon(Icons.play_circle_fill_rounded, weight: 25),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 6),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                textAlign: TextAlign.start,
                'How to educate a goog child to grow up healthy and be able to be a kindful',
                maxLines: 2,
                style: TextStyle(color: Color(0xff000000)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
