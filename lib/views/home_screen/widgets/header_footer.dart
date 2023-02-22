import 'package:flutter/material.dart';

class HeaderFooterWidget extends StatelessWidget {
  const HeaderFooterWidget({
    super.key,
  
    required this.imagePath,
  });
 
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
     
      width: double.infinity,
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}
