import 'package:e_wallet_app/core/theme/theme.dart';
import 'package:e_wallet_app/presentation/contact/contact_screen.dart';
import 'package:e_wallet_app/presentation/home/home_screen.dart';
import 'package:e_wallet_app/presentation/receipt_trax/receipt_screen.dart';
import 'package:e_wallet_app/presentation/send_money/send_money_screen.dart';
import 'package:e_wallet_app/presentation/statistic/statistic_screen.dart';
import 'package:flutter/material.dart';

import 'gen/assets.gen.dart';

class DashboardScreen extends StatefulWidget {
  final int currentTab;
  const DashboardScreen({super.key, required this.currentTab});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  late int _selectedIndex;
  final List<Widget> _pages = [
    const HomeScreen(),
    const StatisticScreen(),
    const SendMoneyScreen(),
    const ContactScreen(),
    const ReceiptScreen()
  ];

  void _onItemTapped(int index) {
    _selectedIndex = index;
    setState(() {});
  }

  @override
  void initState() {
    _selectedIndex = widget.currentTab;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: ColorStyle.ink09,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Assets.icons.home.svg(
              colorFilter: const ColorFilter.mode(
                ColorStyle.ink06,
                BlendMode.srcIn,
              ),
            ),
            activeIcon: Container(
              height: 32,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: ColorStyle.ink09,
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Assets.icons.home.svg(
                  colorFilter: const ColorFilter.mode(
                    ColorStyle.ink01,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.statistic.svg(
              colorFilter: const ColorFilter.mode(
                ColorStyle.ink06,
                BlendMode.srcIn,
              ),
            ),
            activeIcon: Assets.icons.statistic.svg(
              colorFilter: const ColorFilter.mode(
                ColorStyle.ink09,
                BlendMode.srcIn,
              ),
            ),
            label: 'Statistic',
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.box.svg(
              colorFilter: const ColorFilter.mode(
                ColorStyle.ink06,
                BlendMode.srcIn,
              ),
            ),
            activeIcon: Assets.icons.contact.svg(
              colorFilter: const ColorFilter.mode(
                ColorStyle.ink09,
                BlendMode.srcIn,
              ),
            ),
            label: 'Top up',
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.contact.svg(
              colorFilter: const ColorFilter.mode(
                ColorStyle.ink06,
                BlendMode.srcIn,
              ),
            ),
            activeIcon: Assets.icons.contact.svg(
              colorFilter: const ColorFilter.mode(
                ColorStyle.ink09,
                BlendMode.srcIn,
              ),
            ),
            label: 'Contact',
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.more.svg(
              colorFilter: const ColorFilter.mode(
                ColorStyle.ink06,
                BlendMode.srcIn,
              ),
            ),
            activeIcon: Assets.icons.more.svg(
                colorFilter: const ColorFilter.mode(
              ColorStyle.ink09,
              BlendMode.srcIn,
            )),
            label: 'More',
          ),
        ],
      ),
    );
  }
}
