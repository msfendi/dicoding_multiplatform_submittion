import 'package:e_wallet_app/presentation/receipt_trax/components/receiver_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../core/theme/theme.dart';
import 'components/appbar_nav.dart';

class ReceiptScreen extends StatefulWidget {
  const ReceiptScreen({super.key});

  @override
  State<ReceiptScreen> createState() => _ReceiptScreenState();
}

class _ReceiptScreenState extends State<ReceiptScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.repeat();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              color: ColorStyle.ink09,
              child: const AppbarNav(),
            ),
            Positioned(
              top: 90,
              right: 0,
              left: 0,
              bottom: 50,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: const BoxDecoration(
                      color: ColorStyle.ink01,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 31),
                    child: Column(
                      children: [
                        Lottie.asset(
                          'assets/image/success.json',
                          controller: _controller,
                          height: 70,
                          onLoaded: (composition) {
                            _controller
                              ..duration = composition.duration
                              ..forward();
                          },
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        Text(
                          'Transfer Successful!',
                          style: FontStyle.paragraphSemiBold.copyWith(
                            fontSize: 18.sp,
                          ),
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        Text(
                          'Your money has been transfered\nsuccessfuly!',
                          style: FontStyle.paragraphSemiBold.copyWith(
                              fontSize: 12.sp,
                              color: ColorStyle.ink03.withOpacity(0.5)),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 20.sp,
                        ),
                        const Divider(
                          height: 1,
                        ),
                        SizedBox(
                          height: 20.sp,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 23),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Transfer Amount',
                                style: FontStyle.paragraphSemiBold.copyWith(
                                    fontSize: 12.sp,
                                    color: ColorStyle.ink04.withOpacity(0.5)),
                              ),
                              Text(
                                '\$1500',
                                style: FontStyle.paragraphSemiBold.copyWith(
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.sp,
                        ),
                        const ReceiverCard(),
                        SizedBox(
                          height: 30.sp,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 23),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Data & time',
                                style: FontStyle.paragraphSemiBold.copyWith(
                                    fontSize: 12.sp,
                                    color: ColorStyle.ink04.withOpacity(0.5)),
                              ),
                              Text(
                                '1 Jan 2023, 10:30PM',
                                style: FontStyle.paragraphSemiBold.copyWith(
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.sp,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 23),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'No. Ref',
                                style: FontStyle.paragraphSemiBold.copyWith(
                                    fontSize: 12.sp,
                                    color: ColorStyle.ink04.withOpacity(0.5)),
                              ),
                              Text(
                                '11288889058722',
                                style: FontStyle.paragraphSemiBold.copyWith(
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.sp,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 23),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'See Detail',
                                style: FontStyle.paragraphSemiBold
                                    .copyWith(fontSize: 16),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_downward,
                                    size: 18.h,
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ])),
      // bottomNavigationBar: BottomAppBar(
      //     child: Container(
      //   decoration: const BoxDecoration(
      //       color: ColorStyle.ink09,
      //       borderRadius: BorderRadius.all(Radius.circular(20))),
      // )),
    );
  }
}
