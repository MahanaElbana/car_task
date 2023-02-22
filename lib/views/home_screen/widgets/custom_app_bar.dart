import 'package:badges/badges.dart' as badges;
import 'package:car_task/core/app_colors.dart';
import 'package:car_task/core/assests_manager.dart';
import 'package:car_task/core/widgets/custom_text_widet.dart';
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

      leading: Padding(
        padding: const EdgeInsets.only(left: 10.0, top: 8.0),
        child: badges.Badge(
          position: badges.BadgePosition.topStart(
            top: -14.0,
            start: 11,
          ),
          badgeContent: const CustomText(
              textString: '2', textColor: AppColors.appBarColorIcons , fontSize: 12),
          onTap: () => notificationOnPressed(),
          badgeStyle: const badges.BadgeStyle(
            shape: badges.BadgeShape.circle,
            badgeColor: AppColors.appBarbadgedColor,
            padding: EdgeInsets.all(7),
            borderSide: BorderSide(color: AppColors.appBarColorIcons, width: 2),
            elevation: 0,
          ),
          child: SvgPicture.asset(
            AppIconsAssets.homeNotification,
            color: AppColors.appBarColorIcons,
            width: 26.0,
            height: 26.0,
          ),
        ),
      ),
      backgroundColor:AppColors.appBarBackGroundColor.withOpacity(0.6),
      elevation: 0.0,
      //==========================  Action  ========================== //
      actions: [
        TextButton(
          onPressed: () => menuOnpressed(),
          child: SvgPicture.asset(
            AppIconsAssets.homeMenu,
            semanticsLabel: 'Home Menu',
            color: AppColors.appBarColorIcons,
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
