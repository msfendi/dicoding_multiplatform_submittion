import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:e_wallet_app/core/theme/theme.dart';

class ReceiverCard extends StatelessWidget {
  const ReceiverCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 44, vertical: 30),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 11),
        height: 70,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            border: Border.all(color: ColorStyle.ink04),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Image.asset(
              'assets/image/person3.png',
              height: 48.h,
            ),
            SizedBox(
              width: 10.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Maryland Winkles',
                  style: FontStyle.paragraphSemiBold.copyWith(
                    fontSize: 12.sp,
                  ),
                ),
                Text(
                  'Bank - 0070 8822 1102 2255',
                  style: FontStyle.paragraphSemiBold.copyWith(
                      fontSize: 12.sp,
                      color: ColorStyle.ink03.withOpacity(0.5)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
