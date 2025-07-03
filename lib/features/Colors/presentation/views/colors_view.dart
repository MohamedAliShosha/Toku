import 'package:flutter/material.dart';
import 'package:toku2_app/core/models/item_model.dart';
import 'package:toku2_app/core/widgets/list_item.dart';
// import 'package:toku/components/list_item.dart';
// import 'package:toku/models/item.dart';

class ColorsView extends StatelessWidget {
  final List<ItemModel> colors = const [
    ItemModel(
      sound: 'black.wav',
      jpName: 'Burakku',
      enName: 'black',
      image: 'assets/images/colors/color_black.png',
    ),
    // ...
  ];

  const ColorsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
        backgroundColor:
            Colors.deepPurple, // Replace with a theme color or constant
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return ListItem(
            item: colors[index],
            color: Colors.purple, // Replace with a theme color or constant
            itemType: 'colors',
          );
        },
      ),
    );
  }
}
