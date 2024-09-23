import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/theme.dart';

class CarouselPromo extends StatelessWidget {
  const CarouselPromo({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final List<String> promo = ['p'];
    void underMaintenance() {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Fitur Dalam Pengembangan, Coming Soon'),
      ));
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Promo & Discount',
                style: FontStyle.paragraphMedium.copyWith(fontSize: 18),
              ),
              GestureDetector(
                onTap: () => underMaintenance(),
                child: Text(
                  'See more',
                  style: FontStyle.paragraphSemiBold
                      .copyWith(fontSize: 15, color: ColorStyle.ink07),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 11.sp,
          ),
          // PromoSlider(items: promo)
        ],
      ),
    );
  }
}
