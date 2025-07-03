import 'package:flutter/material.dart';
import 'package:toku2_app/core/utils/colors_manager.dart';
import 'package:toku2_app/features/home/presentation/widgets/category_item.dart';

class HomeViewBody extends StatelessWidget {
  HomeViewBody({super.key});

  final List<CategoryItem> items = [
    CategoryItem(
      color: ColorsManager.kOrangeColor,
      text: 'Numbers',
    ),
    CategoryItem(
      color: ColorsManager.kGreenColor,
      text: 'Family Members',
    ),
    CategoryItem(
      color: ColorsManager.kPurpleColor,
      text: 'Colors',
    ),
    CategoryItem(
      color: ColorsManager.kSkyColor,
      text: 'Phrases',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 2, // 2 items per row
              mainAxisSpacing: 50, // spaces between rows
              crossAxisSpacing: 20, // spaces between columns
              children: List.generate(
                items.length,
                (index) {
                  return items[index];
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
