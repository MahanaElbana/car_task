import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';



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
       position: badges.BadgePosition.topStart(top: -11.0, start: 14 ,),
       
      badgeContent: const Text('2' ,style: TextStyle(color: Colors.white ,fontSize: 11),),
      
      onTap: () => notificationOnPressed(),
      badgeStyle: const badges.BadgeStyle(
        shape: badges.BadgeShape.circle,
        badgeColor: Colors.red,
        padding: EdgeInsets.all(7),
        borderSide: BorderSide(color: Colors.white, width: 2),
        elevation: 0,
      ),
      child: const Icon(Icons.notifications_none_outlined , color: Colors.white,size: 33,),
    ),
     backgroundColor: Colors.black.withOpacity(0.3),
     elevation: 0.0,
    //==========================  Action  ========================== //
      actions: [
        IconButton(
          onPressed: () => menuOnpressed(),
          icon: const Icon(
            Icons.menu ,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => appBar.preferredSize;
}