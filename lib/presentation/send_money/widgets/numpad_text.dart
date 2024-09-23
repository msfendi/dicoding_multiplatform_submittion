import 'package:e_wallet_app/presentation/send_money/widgets/numpad_controller.dart';
import 'package:flutter/material.dart';

class NumpadText extends StatefulWidget {
  final NumpadController controller;
  final TextStyle style;
  final TextAlign textAlign;
  final bool animateError;
  final Color errorColor;

  const NumpadText({
    super.key,
    required this.controller,
    required this.style,
    this.textAlign = TextAlign.center,
    this.animateError = false,
    this.errorColor = Colors.red,
  });

  @override
  State<NumpadText> createState() => _NumpadTextState();
}

class _NumpadTextState extends State<NumpadText>
    with SingleTickerProviderStateMixin {
  String? displayedText;

  NumpadController? _controller;

  AnimationController? _errorAnimator;
  Animation<Offset>? _errorAnimation;
  final _totalErrorShakes = 3;
  var _errorShakes = 0;
  bool _isErrorColor = false;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller
      ..addListener(_listener)
      ..setErrorResetListener(_handleError);

    displayedText = _controller?.formattedString;

    _errorAnimator = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 100))
      ..addStatusListener(_errorAnimationStatusListener);

    _errorAnimation =
        Tween<Offset>(begin: const Offset(0, 0), end: const Offset(0.2, 0))
            .animate(_errorAnimator!);
  }

  void _listener() {
    setState(() {
      displayedText = _controller?.formattedString;
    });
  }

  void _handleError() {
    if (widget.animateError) {
      setState(() {
        _isErrorColor = true;
      });
      _errorAnimator?.forward();
    } else {
      _controller?.clear();
    }
  }

  void _errorAnimationStatusListener(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      _errorAnimator?.reverse();
    }
    if (status == AnimationStatus.dismissed) {
      _errorShakes += 1;
      if (_errorShakes < _totalErrorShakes) {
        _errorAnimator?.forward();
      } else {
        _errorShakes = 0;
        _isErrorColor = false;
        _controller?.clear();
      }
    }
  }

  TextStyle _getTextStyle() {
    TextStyle style = TextStyle(
        fontFamily: 'RobotoMono', color: _isErrorColor ? Colors.red : null);
    return widget.style.merge(style);
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _errorAnimation!,
      child: Text(
        displayedText!,
        style: _getTextStyle(),
        textAlign: widget.textAlign,
      ),
    );
  }

  @override
  void dispose() {
    _controller?.removeListener(_listener);
    super.dispose();
  }
}
