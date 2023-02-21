
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {Key? key,
      required this.actionFunction,
      required this.leadingFunction,
      required this.appBar})
      : super(key: key);
  final AppBar appBar;
  final Function actionFunction;
  final Function leadingFunction;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      //== leading
      leading: IconButton(
        icon: const Icon(
          Icons.favorite_outlined,
         // color: AppColors.iconColor,
        ),
        onPressed: () => leadingFunction(),
      ),
 
      actions: [
        
        IconButton(
          onPressed: () => actionFunction(),
          icon: const Icon(
            Icons.contact_support ,
     
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => appBar.preferredSize;
}
