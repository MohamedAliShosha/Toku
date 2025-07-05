import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:toku2_app/core/utils/app_router.dart';
import 'package:toku2_app/core/utils/colors_manager.dart';
import 'package:toku2_app/features/home/presentation/widgets/custom_grid_view_item.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody>
    with TickerProviderStateMixin {
  late final List<AnimationController> _controllers;
  late final List<Animation<Offset>> _animations;

  @override
  void initState() {
    super.initState();
    _initAnimations(); // Initialize animation controllers and tweens
    _startAnimations(); // Play animations when the screen first opens
  }

  // Called again when returning to this screen (from another route)
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _restartAnimations(); // Restart animations on screen re-entry
  }

  // Initialize animations: slide from top or bottom depending on index
  void _initAnimations() {
    _controllers = List.generate(
      4,
      (index) => AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 600),
      ),
    );

    _animations = List.generate(4, (index) {
      final isTop = index < 2;
      return Tween<Offset>(
        begin:
            Offset(0, isTop ? -1 : 1), // top items slide down, others slide up
        end: Offset.zero,
      ).animate(
        CurvedAnimation(
          parent: _controllers[index],
          curve: Curves.easeOutBack,
        ),
      );
    });
  }

  // Play each animation with a slight delay for staggered effect
  Future<void> _startAnimations() async {
    for (int i = 0; i < _controllers.length; i++) {
      await Future.delayed(Duration(milliseconds: i * 150));
      _controllers[i].forward();
    }
  }

  // Reset and replay animations
  void _restartAnimations() {
    for (var controller in _controllers) {
      controller.reset();
    }
    _startAnimations();
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> items = [
      GridViewItem(
        onTap: () => GoRouter.of(context).push(AppRouter.kNumbersView),
        text: 'Numbers',
        color: ColorsManager.kOrangeColor,
      ),
      GridViewItem(
        onTap: () => GoRouter.of(context).push(AppRouter.kFamilyMemberView),
        text: 'Family Members',
        color: ColorsManager.kGreenColor,
      ),
      GridViewItem(
        onTap: () => GoRouter.of(context).push(AppRouter.kColorsView),
        text: 'Colors',
        color: ColorsManager.kPurpleColor,
      ),
      GridViewItem(
        onTap: () => GoRouter.of(context).push(AppRouter.kPhrasesView),
        text: 'Phrases',
        color: ColorsManager.kSkyColor,
      ),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 8),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: List.generate(
          items.length,
          (index) => SlideTransition(
            position: _animations[index], // Apply slide animation to each item
            child: items[index],
          ),
        ),
      ),
    );
  }
}
