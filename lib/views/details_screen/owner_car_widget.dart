import 'package:car_task/core/widgets/custom_text_widet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OwnerCarWidget extends StatelessWidget {
  final String imagePath;
  final String ownerName;
  final String title;
  const OwnerCarWidget({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.ownerName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0)
          ,color: Colors.blueGrey.shade50,
        ),
        alignment: Alignment.center,
        height: 46.0,
        margin: const EdgeInsets.only(right: 10.0 , left: 10.0),
         padding: const EdgeInsets.only(right: 10.0 , left: 10.0),
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
          children: [
            //  const SizedBox(
            //   width: 1.0,
            // ),
            SizedBox(
          height: 45.0,
          width: 45.0,
          child: CircleAvatar(
            radius: 22.5,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 20,
              child: Container(
                height: 19* 2,
                width: 19 * 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19*2),
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
          
           
          
            CustomText(
              textString: ownerName,
              textColor: Colors.black,
              fontSize: 16.0,
            ),
            CustomText(
              textString: title,
              textColor: Colors.black,
              fontSize: 16.0,
            ) ,
           
          ],
        ),
      ),
    );
  }
}
