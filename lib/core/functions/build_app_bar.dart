import 'package:flutter/material.dart';
import 'package:toku2_app/core/utils/colors_manager.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    leading: IconButton(
      color: ColorsManager.kPrimaryColor,
      onPressed: () => Navigator.pop(context),
      icon: const Icon(Icons.arrow_back),
    ),
    title: const Text(
      'Numbers',
      style: TextStyle(
        color: ColorsManager.kPrimaryColor,
      ),
    ),
    backgroundColor: ColorsManager.kBrownColor,
  );
}
