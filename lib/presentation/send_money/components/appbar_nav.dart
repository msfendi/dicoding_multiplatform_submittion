import 'package:flutter/material.dart';

import '../../../core/theme/theme.dart';

class AppbarNav extends StatelessWidget {
  const AppbarNav({super.key});

  @override
  Widget build(BuildContext context) {
    void underMaintenance() {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Fitur Dalam Pengembangan, Coming Soon'),
      ));
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => underMaintenance(),
                child: SizedBox(
                  width: 36,
                  height: 36,
                  child: Image.asset('assets/icons/back.png'),
                ),
              ),
              Text(
                'Send Money',
                style: FontStyle.paragraphSemiBold
                    .copyWith(fontSize: 22, color: ColorStyle.ink01),
              ),
              const SizedBox(
                width: 40,
              )
            ],
          ),
        ),
      ],
    );
  }
}
