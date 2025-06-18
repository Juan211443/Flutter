import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/test_styles.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedGender = "Male";
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(
                top: 12,
                bottom: 12,
                left: 12,
                right: 8,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color:
                      selectedGender == "Male"
                          ? AppColors.backgroundComponents
                          : AppColors.backgroundComponentsSelected,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Image.asset("assets/images/male.png", height: 100),
                      SizedBox(height: 8),
                      Text("Male".toUpperCase(), style: TextStyles.primaryText),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedGender = "Female";
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(
                top: 12,
                bottom: 12,
                right: 12,
                left: 8,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color:
                      selectedGender == "Female"
                          ? AppColors.backgroundComponents
                          : AppColors.backgroundComponentsSelected,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Image.asset("assets/images/female.png", height: 100),
                      SizedBox(height: 8),
                      Text(
                        "Female".toUpperCase(),
                        style: TextStyles.primaryText,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
