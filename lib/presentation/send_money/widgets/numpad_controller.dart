import 'package:flutter/foundation.dart';
import 'package:e_wallet_app/core/formatting/formatter.dart';

typedef ValidInputCallback = void Function(bool);

class NumpadController with ChangeNotifier {
  final NumpadFormat format;

  int? maxRawLength;
  String? hintText;
  String? defaultHintText;
  bool? inputValid;

  int? _rawNumber;
  get rawNumber => _rawNumber;

  String? _rawString;
  get rawString => _rawString;

  String? _formattedString;

  _setFormattedString(String? value) {
    _formattedString = value ?? hintText ?? defaultHintText;
    notifyListeners();
  }

  get formattedString => _formattedString;

  ValidInputCallback? onInputValidChange;

  VoidCallback? _onErrorResetRequest;

  void setErrorResetListener(VoidCallback listener) {
    // ignore: unnecessary_this
    this._onErrorResetRequest = listener;
  }

  ///Can be called when business logic deems the [Numpad] input invalid. Used
  ///in conjunction with the [animateError] option on [NumpadText].
  void notifyErrorResetListener() {
    _onErrorResetRequest?.call();
  }

  NumpadController(
      {this.format = NumpadFormat.NONE,
      this.hintText,
      this.onInputValidChange}) {
    switch (format) {
      case NumpadFormat.NONE:
        defaultHintText = 'Enter Number';
        maxRawLength = 10;
        break;
      case NumpadFormat.CURRENCY:
        defaultHintText = 'Rp.0';
        maxRawLength = 6;
        break;
      case NumpadFormat.PHONE:
        defaultHintText = '(___) ___-____';
        maxRawLength = 10;
        break;
      case NumpadFormat.PIN4:
        defaultHintText = '----';
        maxRawLength = 4;
        break;
    }
    _formattedString = hintText ?? defaultHintText;
  }

  void parseInput(int input) {
    switch (input) {
      case -2: //Clear
        _rawString = null;
        if (inputValid == true) {
          inputValid = false;
          onInputValidChange?.call(inputValid!);
        }
        break;
      case -1: //Backspace
        if (_rawString != null && _rawString!.length > 1) {
          _rawString = _rawString!.substring(0, _rawString!.length - 1);
        } else {
          _rawString = null;
        }
        if (inputValid == true) {
          inputValid = false;
          onInputValidChange?.call(inputValid!);
        }
        break;
      default:
        if (_rawString != null) {
          if (_rawString!.length < maxRawLength!) {
            _rawString = _rawString! + input.toString();
            if (_rawString!.length == maxRawLength &&
                format != NumpadFormat.CURRENCY) {
              inputValid = true;
              onInputValidChange?.call(inputValid!);
            }
          }
        } else {
          if (input == 0 && format == NumpadFormat.CURRENCY) {
            break;
          }
          _rawString = input.toString();
          if (format == NumpadFormat.CURRENCY) {
            inputValid = true;
            onInputValidChange?.call(inputValid!);
          }
        }
        break;
    }
    if (_rawString == null) {
      _rawNumber = null;
      _setFormattedString(null);
    } else {
      _rawNumber = int.tryParse(_rawString!);
      _setFormattedString(formatRawString(_rawString!, format));
    }
  }

  ///Resets the controller back to its inital state.
  void clear() {
    _rawNumber = null;
    _rawString = null;
    _formattedString = hintText ?? defaultHintText;
    notifyListeners();
  }
}
