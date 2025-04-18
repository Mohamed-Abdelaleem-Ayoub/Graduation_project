import 'package:flutter/material.dart';
import 'package:graduation_project/constans.dart';
import 'package:graduation_project/helpers/book_key_highlights_method.dart';
import 'package:graduation_project/helpers/rate_method.dart';

class BookInfoPage extends StatelessWidget {
  static String id = 'BookInfoScreen';
  const BookInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              width: double.infinity,
              height: 256,
              decoration: BoxDecoration(
                color: Colors.amber,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    'https://media.istockphoto.com/id/1957612313/photo/teenage-girl-sitting-on-windowsill-and-reading-a-book.jpg?s=2048x2048&w=is&k=20&c=VFjk3m8NlE238tFqeDUmFkMMJjAKDh_o_66XWvQdHfg=',
                  ),
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Trending',
                style: TextStyle(
                  color: Color(0xffA16F83),
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  fontFamily: kFontFamily,
                ),
              ),
              Icon(Icons.local_fire_department_rounded, color: Colors.orange),
              Text(
                '5 min read',
                style: TextStyle(
                  color: Color(0xffA16F83),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: kFontFamily,
                ),
              ),
              Column(
                children: [
                  Text(
                    maxLines: 2,
                    'Published at',
                    style: TextStyle(
                      color: Color(0xffA16F83),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: kFontFamily,
                    ),
                  ),
                  Text(
                    maxLines: 2,
                    'December,24,2025',
                    style: TextStyle(
                      color: Color(0xffA16F83),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: kFontFamily,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
            child: Text(
              'What to Expect When You\'re Expecting',
              maxLines: 2,
              style: TextStyle(
                color: Color(0xff4F4F4F),
                fontSize: 20,
                fontWeight: FontWeight.w400,
                fontFamily: kFontFamily,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              children: [
                const Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        'https://media.istockphoto.com/id/1478316046/photo/portrait-of-high-school-teacher-at-school-library.jpg?s=612x612&w=0&k=20&c=sSU4PQgVZXW6jiddn8YcB3s2F_Vge5RekkWBlMiUKuU=',
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text('by Heidi Murkoff'),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    rateMethod(4.9),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Padding(
                        padding: EdgeInsets.only(left: 24),
                        child: Text('4.9'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 16),
            margin: const EdgeInsets.all(16),
            width: double.infinity,

            decoration: BoxDecoration(
              color: const Color(0xffFFEAEE),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Key Highlights:",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 8),
                ...buildHighlights([
                  "Week-by-week guide to pregnancy changes",
                  "Detailed nutrition and exercise guidelines",
                  "Common pregnancy symptoms and solutions",
                  "Preparation for labor and delivery",
                ]),
              ],
            ),
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About This Book',
                    style: TextStyle(
                      color: Color(0xff333333),
                      fontFamily: kFontFamily,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "America's pregnancy bible answers all your baby questions. When can I take a home pregnancy test? How can I eat for two if I'm too queasy to eat for one? Can I keep up my spinning classes? Is fish safe to eat? And what's this I hear about soft cheese? These are just some of the questions you'll find the answers to in this comprehensive, reassuring, and accessible guide.",
                    style: TextStyle(
                      color: Color(0xff4F4F4F),
                      fontFamily: kFontFamily,
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
