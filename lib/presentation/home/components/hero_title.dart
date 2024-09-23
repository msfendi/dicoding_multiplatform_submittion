import 'package:e_wallet_app/core/theme/color_style.dart';
import 'package:e_wallet_app/core/theme/font_style.dart';
import 'package:flutter/material.dart';

class HeroTitle extends StatelessWidget {
  const HeroTitle({super.key});

  @override
  Widget build(BuildContext context) {
    void underMaintenance() {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Fitur Dalam Pengembangan, Coming Soon'),
      ));
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/image/profil1.png',
                width: 36,
              ),
              Text(
                'Hello,Ihor',
                style: FontStyle.paragraphSemiBold
                    .copyWith(fontSize: 16, color: ColorStyle.ink01),
              ),
              InkWell(
                onTap: () => underMaintenance(),
                child: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                      border: Border.all(color: ColorStyle.ink01),
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset('assets/icons/notification.png'),
                ),
              )
            ],
          ),
          Text(
            'Available Balance',
            style: FontStyle.paragraphSemiBold
                .copyWith(fontSize: 14, color: ColorStyle.ink04),
          ),
          Text(
            '11.547.54',
            style: FontStyle.heading1.copyWith(color: ColorStyle.ink01),
          ),
        ],
      ),
    );
  }
}
