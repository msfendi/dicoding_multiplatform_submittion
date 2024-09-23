import 'package:e_wallet_app/core/theme/theme.dart';
import 'package:e_wallet_app/presentation/statistic/widgets/chart_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CashflowChart extends StatelessWidget {
  const CashflowChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ChartBar(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 65),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 10.sp,
                    height: 10.sp,
                    decoration: const BoxDecoration(
                        color: ColorStyle.ink08,
                        borderRadius: BorderRadius.all(Radius.circular(2))),
                  ),
                  SizedBox(
                    width: 5.sp,
                  ),
                  Text(
                    'Income',
                    style: FontStyle.paragraphRegular.copyWith(
                        fontSize: 14.sp,
                        color: ColorStyle.ink03.withOpacity(0.5)),
                  )
                ],
              ),
              SizedBox(
                width: 32.sp,
              ),
              Row(
                children: [
                  Container(
                    width: 10.sp,
                    height: 10.sp,
                    decoration: const BoxDecoration(
                        color: ColorStyle.ink09,
                        borderRadius: BorderRadius.all(Radius.circular(2))),
                  ),
                  SizedBox(
                    width: 5.sp,
                  ),
                  Text(
                    'Outcome',
                    style: FontStyle.paragraphRegular.copyWith(
                        fontSize: 14.sp,
                        color: ColorStyle.ink03.withOpacity(0.5)),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
