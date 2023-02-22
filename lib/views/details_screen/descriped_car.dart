
import 'package:car_task/core/widgets/custom_text_widet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DerscripedCar extends StatelessWidget {
  final String imagePath;
  final String title;
  final String value;
  const DerscripedCar({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        alignment: Alignment.bottomRight,
        // height: 30.0,
        margin: const EdgeInsets.only(right: 24.0),
        color: Colors.blueGrey.shade50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                children: [
                  const SizedBox(
                    width: 6.0,
                  ),
                  SvgPicture.asset(
                    imagePath,
                    width: 14.0,
                    height: 14.0,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                   CustomText(
                    textString: title,
                    textColor: Colors.black,
                    fontSize: 16.0,
                  
                  )
                ],
              ),
            ),
             Expanded(
              child: CustomText(
                textString: value,
                textColor: Colors.black,
                fontSize: 16.0,
          
              ),
            )
          ],
        ),
      ),
    );
  }
}
