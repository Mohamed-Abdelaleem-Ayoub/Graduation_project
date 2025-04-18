import 'package:flutter/material.dart';
import 'package:graduation_project/pages/all_books_page.dart';
import 'package:graduation_project/pages/all_speaker_videos.dart';
import 'package:graduation_project/pages/all_videos.dart';
import 'package:graduation_project/pages/book_info_screen.dart';
import 'package:graduation_project/pages/books_reading_page.dart';
import 'package:graduation_project/pages/chat_bot_screen.dart';

import 'package:graduation_project/pages/consultants_page.dart';
import 'package:graduation_project/pages/video_player_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const GraduationProject());
}

class GraduationProject extends StatelessWidget {
  const GraduationProject({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AllBooksPage.id: (context) => const AllBooksPage(),
        AllSpeakerVideosPage.id: (context) => const AllSpeakerVideosPage(),
        BookInfoPage.id: (context) => const BookInfoPage(),
        AllVideosPage.id: (context) => AllVideosPage(),
        BooksReadingPage.id: (context) => const BooksReadingPage(),
        ConsultantPage.id: (context) => const ConsultantPage(),
        VideoPlayerPage.id: (context) => const VideoPlayerPage(),
        ChatBotPage.id: (context) => const ChatBotPage(),
      },
      initialRoute: ChatBotPage.id,
    );
  }
}
