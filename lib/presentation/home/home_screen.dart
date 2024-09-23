import 'package:e_wallet_app/core/theme/color_style.dart';
import 'package:e_wallet_app/core/theme/theme.dart';
import 'package:e_wallet_app/presentation/home/components/carousel_promo.dart';
import 'package:e_wallet_app/presentation/home/components/floating_service.dart';
import 'package:e_wallet_app/presentation/home/components/payment_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/hero_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: SingleChildScrollView(
        // shrinkWrap: true,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              color: ColorStyle.ink09,
              child: const HeroTitle(),
            ),
            Positioned(
              top: 210,
              right: 0,
              left: 0,
              bottom: 0,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: ColorStyle.ink01,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
              ),
            ),
            Positioned(
                top: 170,
                right: 0,
                left: 0,
                bottom: 0,
                child: Column(
                  children: [
                    const FloatingService(),
                    SizedBox(
                      height: 25.h,
                    ),
                    const PaymentList(),
                    SizedBox(
                      height: 25.h,
                    ),
                    // const PaymentList(),
                    const CarouselPromo(),
                  ],
                )),
          ],
        ),
      )),
    );
  }
}
