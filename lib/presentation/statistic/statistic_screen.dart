import 'package:e_wallet_app/presentation/statistic/widgets/count_cashflow.dart';
import 'package:e_wallet_app/presentation/statistic/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:e_wallet_app/core/theme/theme.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/cashflow_chart.dart';

class StatisticScreen extends StatelessWidget {
  const StatisticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    List<String> filterPeriod = ['Year', 'Month', 'Day'];
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 22),
          child: ListView(
            children: [
              Center(
                child: Text(
                  'Statistic',
                  style: FontStyle.paragraphSemiBold.copyWith(fontSize: 22),
                ),
              ),
              SizedBox(
                height: 39.sp,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total Balance',
                    style: FontStyle.paragraphMedium.copyWith(
                        fontSize: 14, color: ColorStyle.ink03.withOpacity(0.5)),
                  ),
                  Text(
                    '11.547.54',
                    style: FontStyle.paragraphMedium.copyWith(fontSize: 32),
                  ),
                ],
              ),
              SizedBox(
                height: 30.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Overview',
                    style: FontStyle.paragraphSemiBold.copyWith(fontSize: 22),
                  ),
                  const CustomDropdown()
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              Animate(effects: const [
                FadeEffect(duration: Duration(milliseconds: 1500))
              ], child: const CashflowChart()),
              SizedBox(
                height: 20.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CountCashflow(
                    bgimage: 'assets/image/bg-bottom-arrow.png',
                    icon: 'assets/image/bottom-arrow.png',
                    title: 'Income',
                    value: '5.000.000',
                    color: ColorStyle.ink08,
                  ),
                  SizedBox(
                    width: 20.sp,
                  ),
                  const CountCashflow(
                    bgimage: 'assets/image/bg-top-arrow.png',
                    icon: 'assets/image/up-arrow.png',
                    title: 'Outcome',
                    value: '5.000.000',
                    color: ColorStyle.ink09,
                  )
                ],
              )
            ],
          ),
        )));
  }
}
