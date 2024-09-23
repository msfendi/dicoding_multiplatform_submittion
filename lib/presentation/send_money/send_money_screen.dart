import 'package:e_wallet_app/presentation/send_money/components/appbar_nav.dart';
import 'package:e_wallet_app/presentation/send_money/components/receiver_card.dart';
import 'package:e_wallet_app/presentation/send_money/widgets/numpad.dart';
import 'package:e_wallet_app/presentation/send_money/widgets/numpad_text.dart';
import 'package:flutter/material.dart';

import '../../core/formatting/formatter.dart';
import '../../core/theme/theme.dart';
import 'widgets/numpad_controller.dart';

class SendMoneyScreen extends StatelessWidget {
  const SendMoneyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    final NumpadController _numpadController =
        NumpadController(format: NumpadFormat.CURRENCY);
    return Scaffold(
        body: SafeArea(
            child: ListView(
      children: [
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
              bottom: 10,
              child: Container(
                height: 1800,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: ColorStyle.ink01,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  children: [
                    const ReceiverCard(),
                    // Text(
                    //   '12000',
                    //   style: FontStyle.paragraphMedium
                    //       .copyWith(fontSize: 50, color: ColorStyle.ink03),
                    // ),
                    NumpadText(
                        controller: _numpadController,
                        style: FontStyle.heading1),
                    Expanded(child: Numpad(controller: _numpadController))
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    )));
  }
}
