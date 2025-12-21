import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/widgets/app_bar.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: const CustomAppBar(
        haveSearchBar: true,
        haveTitle: true,
        title: "Categories",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Gap(50),
            Padding(
              padding: const EdgeInsetsGeometry.all(13),
              child: Stack(
                children: [Image.asset("assets/images/temp_home_image_ad.png")],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
