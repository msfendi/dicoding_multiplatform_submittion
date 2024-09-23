import 'package:e_wallet_app/data/models/response/service_list_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/theme.dart';

class FloatingService extends StatelessWidget {
  const FloatingService({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 90) / 4;
    final double itemWidth = size.width / 4;

    void underMaintenance() {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Fitur Dalam Pengembangan, Coming Soon'),
      ));
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: ColorStyle.ink01,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: ColorStyle.ink06.withOpacity(0.3),
              spreadRadius: 7,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: (itemWidth / itemHeight),
                crossAxisSpacing: 11,
              ),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: serviceList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) => InkWell(
                onTap: () => underMaintenance(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(serviceList[index].iconUrl),
                    SizedBox(
                      height: 7.sp,
                    ),
                    Text(
                      serviceList[index].name,
                      style: FontStyle.paragraphRegular.copyWith(
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
