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
          height: 90.0,
          width: 90.0,
          child: CircleAvatar(
            radius: 45.0,
            backgroundColor: Colors.red,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 43,
              child: Container(
                height: 40.5 * 2,
                width: 40.5 * 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.5),
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
