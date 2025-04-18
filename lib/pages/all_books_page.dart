import 'package:flutter/material.dart';
import 'package:graduation_project/constans.dart';
import 'package:graduation_project/widgets/all_books_list.dart';

import 'package:graduation_project/widgets/search_bar.dart';
import 'package:graduation_project/widgets/videos_category_list.dart';

class AllBooksPage extends StatelessWidget {
  static String id = 'AllBooksPage';
  const AllBooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,

        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hi , ',
              style: TextStyle(
                color: Color(0xff333333),
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),

            Text(
              'Jenny',
              style: TextStyle(
                color: Color(0xffFF8EA2),
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Icon(
                Icons.waving_hand_rounded,
                color: Colors.amber,
                size: 15,
              ),
            ),
          ],
        ),
        actions: const [
          Icon(Icons.settings),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Icon(Icons.notifications_none),
          ),
        ],
      ),
      body: const CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(child: SearchBarWidget()),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: SizedBox(height: 50, child: CategoryList()),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          AllBooksList(),
        ],
      ),
    );
  }
}
