import 'package:e_wallet_app/presentation/send_money/widgets/numpad_controller.dart';
import 'package:flutter/material.dart';

class Numpad extends StatelessWidget {
  final double innerPadding;

  final double buttonTextSize;
  final Color? buttonColor;
  final Color? textColor;
  final double height;
  final double width;
  final NumpadController controller;
  const Numpad(
      {super.key,
      this.innerPadding = 4,
      this.buttonTextSize = 30,
      this.buttonColor,
      this.textColor,
      this.height = double.infinity,
      this.width = double.infinity,
      required this.controller});

  // ignore: unused_element
  EdgeInsetsGeometry _buttonPadding() {
    return EdgeInsets.all(innerPadding);
  }

  Widget _buildNumButton({BuildContext? context, int? displayNum, Icon? icon}) {
    Widget effectiveChild;
    int passNum = displayNum!;
    if (icon != null) {
      effectiveChild = icon;
    } else {
      effectiveChild = Text(
        displayNum.toString(),
        style: TextStyle(fontSize: buttonTextSize, color: textColor),
      );
    }
    return Expanded(
      child: ElevatedButton(
        // ignore: sort_child_properties_last
        child: effectiveChild,
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        onPressed: () => controller.parseInput(passNum),
      ),
    );
  }

  Widget _buildNumRow(BuildContext context, List<int> numbers) {
    List<Widget> buttonList = numbers
        .map((buttonNum) =>
            _buildNumButton(context: context, displayNum: buttonNum))
        .toList();
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Expanded(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: buttonList),
      ),
    );
  }

  Widget _buildSpecialRow(BuildContext context) {
    return Expanded(
      // ignore: avoid_unnecessary_containers
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildNumButton(
                context: context,
                displayNum: -1,
                icon: Icon(
                  Icons.backspace,
                  size: buttonTextSize,
                )),
            _buildNumButton(context: context, displayNum: 0),
            _buildNumButton(
                context: context,
                displayNum: -2,
                icon: Icon(
                  Icons.clear,
                  size: buttonTextSize,
                )),
          ],
        ),
      ),
    );
  }

  Widget _buildNumPad(BuildContext context, BoxConstraints constraints) {
    return SizedBox(
      height: height,
      width: width,
      // padding: _buttonPadding(),
      child: LimitedBox(
        maxHeight: 300,
        maxWidth: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildNumRow(context, [1, 2, 3]),
            _buildNumRow(context, [4, 5, 6]),
            _buildNumRow(context, [7, 8, 9]),
            _buildSpecialRow(context)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: _buildNumPad,
    );
  }
}
