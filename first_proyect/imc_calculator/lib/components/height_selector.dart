import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/test_styles.dart';

class HeightSelector extends StatefulWidget {
  const HeightSelector({super.key});

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  double height = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 12, right: 12, left: 12),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundComponentsSelected,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Text("HEIGHT", style: TextStyles.primaryText),
            Text(
              "${height.toStringAsFixed(0)} cm",
              style: TextStyles.primaryText,
            ),
            Slider(
              value: height,
              onChanged: (currentHeight) {
                setState(() {
                  height = currentHeight;
                });
              },
              min: 0,
              max: 220,
              divisions: 220,
            ),
          ],
        ),
      ),
    );
  }
}
