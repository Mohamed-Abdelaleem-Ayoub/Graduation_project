import 'package:flutter/material.dart';
import 'package:graduation_project/constans.dart';
import 'package:graduation_project/helpers/rate_method.dart';
import 'package:graduation_project/pages/book_info_screen.dart';
//import 'package:graduation_project/pages/books_reading_page.dart';

class CustomBookCard extends StatelessWidget {
  const CustomBookCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.pushNamed(context, BooksReadingPage.id);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            // width: 162,
            // height: 197,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  // ignore: use_full_hex_values_for_flutter_colors
                  color: Color(0xff00000040),
                  blurRadius: 4,
                  offset: Offset(1, 1),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Card(
              color: const Color(0xffFFFFFF),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(height: 90),
                    const Center(
                      child: Text(
                        'The Happiest Baby on the Block',
                        maxLines: 2,
                        style: TextStyle(
                          fontFamily: kFontFamily,
                          fontWeight: FontWeight.w300,

                          color: Color(0xff000000),
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'by Harvey Karp',
                        maxLines: 2,
                        style: TextStyle(
                          fontFamily: kFontFamily,
                          fontWeight: FontWeight.w300,

                          color: Color(0xff777777),
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        rateMethod(4.9),
                        const Text('4.9', style: TextStyle(fontSize: 14)),
                      ],
                    ),
                    const SizedBox(height: 16),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, BookInfoPage.id);
                      },
                      child: const Align(
                        alignment: Alignment.bottomRight,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Read More',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xffFF8EA2),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 4),
                            Icon(
                              Icons.arrow_forward,
                              color: Color(0xffFF8EA2),
                              size: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 177,
            left: 5,

            child: Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://www.noor-book.com/publice/covers_cache_webp/5/6/f/1/37c0e52fcb6f1d3f8d7171731c72f1fc.png.webp',
                  ),
                ),
              ),

              height: 200,
              width: 200,
            ),
          ),
        ],
      ),
    );
  }
}
