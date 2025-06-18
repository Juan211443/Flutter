import 'package:flutter/material.dart';
// import 'package:flutter_animate/flutter_animate.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          "https://wallpapers.com/images/featured-full/general-grievous-dgtrri2w9dihxth4.jpg",
        ),
        Image.asset("assets/images/FJPT5455KR5K1589912863345.jpg", height: 100),
        // Image.network(
        //   "https://media2.giphy.com/media/v1.Y2lkPTc5MGI3NjExdm1yOTllZnJqbzUwYTNvNzdvM2FsNTV6enBlY2g1YTN2c2dvcmEyZSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UIeLsVh8P64G4/giphy.gif",
        // ).animate().fadeIn(),
      ],
    );
  }
}
