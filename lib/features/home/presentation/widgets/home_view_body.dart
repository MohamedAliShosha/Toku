// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:toku2_app/core/utils/app_router.dart';

import 'package:toku2_app/core/utils/colors_manager.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                GridViewItem(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kNumbersView);
                  },
                  text: 'Numbers',
                  color: ColorsManager.kOrangeColor,
                ),
                GridViewItem(
                  onTap: () =>
                      GoRouter.of(context).push(AppRouter.kFamilyMemberView),
                  text: 'Family Members',
                  color: ColorsManager.kGreenColor,
                ),
                const GridViewItem(
                  text: 'Colors',
                  color: ColorsManager.kPurpleColor,
                ),
                const GridViewItem(
                  text: 'Phrases',
                  color: ColorsManager.kSkyColor,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class GridViewItem extends StatelessWidget {
  const GridViewItem({
    super.key,
    required this.text,
    this.color,
    this.onTap,
  });

  final String text;
  final Color? color;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: color,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: ColorsManager.kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
