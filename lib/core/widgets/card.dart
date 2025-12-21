import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadiusGeometry.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.3),
            spreadRadius: 0,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image, fit: BoxFit.cover),
          const Gap(10),
          Text(
            "Product Name",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const Gap(10),
          Text(
            "\$44.99",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,

            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontVariations: <FontVariation>[const FontVariation('wght', 700)],
              letterSpacing: 0.8,
            ),
          ),
        ],
      ),
    );
  }
}
