import 'package:flutter/material.dart';
import 'package:toku2_app/core/functions/build_app_bar.dart';

import 'package:toku2_app/core/models/item_model.dart';
import 'package:toku2_app/core/utils/colors_manager.dart';
import 'package:toku2_app/core/widgets/list_item.dart';

class NumberViewBody extends StatelessWidget {
  const NumberViewBody({super.key});

  final List<ItemModel> numbers = const [
    ItemModel(
      sound: 'assets/Sounds/numbers_sounds/number_one_sound.mp3',
      jpName: 'ichi',
      enName: 'one',
      image: 'assets/Numbers_Images/number_one.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_two_sound.mp3',
      jpName: 'Ni',
      enName: 'two',
      image: 'assets/Numbers_Images/number_two.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'San',
      enName: 'three',
      image: 'assets/Numbers_Images/number_three.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'Shi',
      enName: 'four',
      image: 'assets/Numbers_Images/number_four.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'Go',
      enName: 'five',
      image: 'assets/Numbers_Images/number_five.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'Roku',
      enName: 'six',
      image: 'assets/Numbers_Images/number_six.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'Sebun',
      enName: 'seven',
      image: 'assets/Numbers_Images/number_seven.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'hachi',
      enName: 'eight',
      image: 'assets/Numbers_Images/number_eight.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'Kyū',
      enName: 'nine',
      image: 'assets/Numbers_Images/number_nine.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'Jū',
      enName: 'ten',
      image: 'assets/Numbers_Images/number_ten.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ListItem(
            item: numbers[index],
            color: ColorsManager.kBrownColor,
          );
        },
      ),
    );
  }
}
