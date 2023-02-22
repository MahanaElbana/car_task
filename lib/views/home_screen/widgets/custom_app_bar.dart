import 'package:badges/badges.dart' as badges;
import 'package:car_task/core/assests_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {Key? key,
      required this.notificationOnPressed,
      required this.menuOnpressed,
      required this.appBar})
      : super(key: key);
  final AppBar appBar;
  final Function notificationOnPressed;
  final Function menuOnpressed;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      //==========================  leading ========================== //

      leading: badges.Badge(
        position: badges.BadgePosition.topStart(
          top: -11.0,
          start: 14,
        ),
        badgeContent: const Text(
          '2',
          style: TextStyle(color: Colors.white, fontSize: 11),
        ),
        onTap: () => notificationOnPressed(),
        badgeStyle: const badges.BadgeStyle(
          shape: badges.BadgeShape.circle,
          badgeColor: Colors.red,
          padding: EdgeInsets.all(7),
          borderSide: BorderSide(color: Colors.white, width: 2),
          elevation: 0,
        ),
        child: const Icon(
          Icons.notifications_none_outlined,
          color: Colors.white,
          size: 33,
        ),
      ),
      backgroundColor: Colors.black.withOpacity(0.3),
      elevation: 0.0,
      //==========================  Action  ========================== //
      actions: [
        TextButton(
          onPressed: () => menuOnpressed(),
          child: SvgPicture.asset(
            AppIconsAssets.homeMenu,
            semanticsLabel: 'Home Menu',
            color: Colors.white,
            width: 18.0,
            height: 18.0,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => appBar.preferredSize;
}
