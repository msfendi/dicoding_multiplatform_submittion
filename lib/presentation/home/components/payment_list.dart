import 'package:e_wallet_app/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/response/payment_list_models.dart';

class PaymentList extends StatelessWidget {
  const PaymentList({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 150) / 4;
    final double itemWidth = size.width / 4;

    void underMaintenance() {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Fitur Dalam Pengembangan, Coming Soon'),
      ));
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Payment List',
            style: FontStyle.paragraphMedium.copyWith(fontSize: 18),
          ),
          SizedBox(
            height: 11.sp,
          ),
          GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: (itemWidth / itemHeight),
                crossAxisSpacing: 11,
              ),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: paymentList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) => GestureDetector(
                    onTap: () => underMaintenance(),
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: ColorStyle.ink11),
                          child: Image.asset(paymentList[index].iconUrl),
                        ),
                        SizedBox(
                          height: 5.sp,
                        ),
                        Text(
                          paymentList[index].name,
                          style:
                              FontStyle.paragraphRegular.copyWith(fontSize: 14),
                        ),
                      ],
                    ),
                  )),
        ],
      ),
    );
  }
}
