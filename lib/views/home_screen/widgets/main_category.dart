import 'package:flutter/material.dart';

class MainCategoryWidget extends StatelessWidget {
  final String categoryName;
  final String imagePath;
  const MainCategoryWidget({
    super.key,
    required this.categoryName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80.0,
          width: 80.0,
          child: CircleAvatar(
            radius: 40.0,
            backgroundColor: Colors.red,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 38,
              child: Container(
                height: 36* 2,
                width: 36 * 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36),
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          categoryName,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
