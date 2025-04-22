import 'package:flutter/material.dart';
import 'package:graduation_project/widgets/custom_book_card.dart';

class AllBooksList extends StatelessWidget {
  const AllBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    // return GridView.builder(
    //   itemCount: 20,
    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 2,
    //     mainAxisSpacing: 40,
    //     crossAxisSpacing: 10,
    //     childAspectRatio: 162 / 210,
    //   ),
    //   itemBuilder: (context, index) {
    //     return CustomBookCard();
    //   },
    // );

    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (context, index) => const CustomBookCard(),
          childCount: 20,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 150,
          crossAxisSpacing: 2,

          childAspectRatio: 162 / 197,
        ),
      ),
    );
  }
}
