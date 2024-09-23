import 'package:e_wallet_app/core/theme/color_style.dart';
import 'package:e_wallet_app/core/theme/font_style.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PromoSlider extends StatefulWidget {
  final List<String> items;
  const PromoSlider({super.key, required this.items});

  @override
  State<PromoSlider> createState() => _PromoSliderState();
}

class _PromoSliderState extends State<PromoSlider> {
  // ignore: unused_field
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: widget.items
          .map((e) => Container(
                height: 10,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ColorStyle.ink08),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Special Offer for\nToday’s Top Up',
                        style: FontStyle.paragraphBold
                            .copyWith(fontSize: 20, color: ColorStyle.ink01),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Get discount for every top up,\ntransfer and payment',
                        style: FontStyle.paragraphRegular
                            .copyWith(fontSize: 12, color: ColorStyle.ink01),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ))
          .toList(),
      carouselController: _controller,
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 16 / 7,
        viewportFraction: 1,
        onPageChanged: (index, reason) {
          _current = index;
          setState(() {});
        },
      ),
    );
  }
}
