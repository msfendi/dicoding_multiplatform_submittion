import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/theme.dart';

class CountCashflow extends StatelessWidget {
  final String bgimage;
  final String icon;
  final String title;
  final String value;
  final Color color;
  const CountCashflow(
      {super.key,
      required this.bgimage,
      required this.icon,
      required this.title,
      required this.value,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // width: 165.w,
        height: 165.h,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(16)),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 53, top: 14),
              child: Image.asset(
                bgimage,
                height: 150,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    icon,
                    height: 32,
                  ),
                  SizedBox(
                    height: 23.h,
                  ),
                  Text(
                    title,
                    style: FontStyle.paragraphRegular
                        .copyWith(fontSize: 14.sp, color: ColorStyle.ink01),
                  ),
                  Text(
                    value,
                    style: FontStyle.paragraphSemiBold
                        .copyWith(fontSize: 18.sp, color: ColorStyle.ink01),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
