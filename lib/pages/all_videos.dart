// import 'package:flutter/material.dart';
// import 'package:graduation_project/constans.dart';
// import 'package:graduation_project/widgets/search_bar.dart';
// import 'package:graduation_project/widgets/today_date.dart';
// import 'package:graduation_project/widgets/video_card.dart';
// import 'package:graduation_project/widgets/videos_category_list.dart';

// import 'package:intl/intl.dart';

// // ignore: must_be_immutable
// class AllVideosPage extends StatelessWidget {
//   String todayDate = DateFormat('MMM,dd,yyyy').format(DateTime.now());
//   static String id = 'AllVieaosPage';
//   AllVideosPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: kBackgroundColor,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         // backgroundColor: kBackgroundColor,
//         elevation: 0,

//         title: const Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Hi , ',
//               style: TextStyle(
//                 color: Color(0xff333333),
//                 fontSize: 16,
//                 fontWeight: FontWeight.w700,
//               ),
//             ),

//             Text(
//               'Jenny',
//               style: TextStyle(
//                 color: Color(0xffFF8EA2),
//                 fontSize: 16,
//                 fontWeight: FontWeight.w700,
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(left: 8.0),
//               child: Icon(
//                 Icons.waving_hand_rounded,
//                 color: Colors.amber,
//                 size: 15,
//               ),
//             ),
//           ],
//         ),
//         actions: const [
//           Icon(Icons.settings),
//           Padding(
//             padding: EdgeInsets.only(left: 8),
//             child: Icon(Icons.notifications_none),
//           ),
//         ],
//       ),
//       body: CustomScrollView(
//         slivers: [
//           SliverToBoxAdapter(child: TodayDate(todayDate: todayDate)),
//           const SliverToBoxAdapter(child: SearchBarWidget()),
//           const SliverToBoxAdapter(
//             child: SizedBox(height: 50, child: CategoryList()),
//           ),
//           SliverToBoxAdapter(
//             child: ListView.builder(
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               itemCount: 10,
//               itemBuilder: (context, indx) {
//                 return const VideoCard();
//               },
//             ),
//           ),
//         ],
//       ),

//       //Column(
//       //   children: [
//       //     TodayDate(todayDate: todayDate),
//       //     SearchBarWidget(),

//       //     SizedBox(height: 50, child: VideosCategoryList()),
//       //     Expanded(
//       //       child: ListView.builder(
//       //         itemCount: 10,
//       //         itemBuilder: (context, indx) {
//       //           return VideoCard();
//       //         },
//       //       ),
//       //     ),
//       //   ],
//       // ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:graduation_project/models/vodeo_model.dart';
import 'package:graduation_project/pages/video_player_page.dart';
import 'package:graduation_project/services/get_all_videos_sercie.dart';

class VideoListScreen extends StatefulWidget {
  static String id = 'AllViedosPage';
  const VideoListScreen({super.key});

  @override
  State<VideoListScreen> createState() => _VideoListScreenState();
}

class _VideoListScreenState extends State<VideoListScreen> {
  late Future<List<YoutubeVideoModel>> _videosFuture;

  @override
  void initState() {
    super.initState();
    _videosFuture = VideoService.fetchVideos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('فيديوهات تعليمية')),
      body: FutureBuilder<List<YoutubeVideoModel>>(
        future: _videosFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('حدث خطأ: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('لا توجد فيديوهات حالياً'));
          }

          final videos = snapshot.data!;
          return ListView.builder(
            itemCount: videos.length,
            itemBuilder: (context, index) {
              final video = videos[index];
              return Card(
                margin: const EdgeInsets.all(8),
                child: ListTile(
                  title: Text(video.title),
                  trailing: const Icon(Icons.play_circle_fill),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (_) => YoutubeVideoScreen(youtubeUrl: video.url),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
