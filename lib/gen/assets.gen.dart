/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/assurance.png
  AssetGenImage get assurance =>
      const AssetGenImage('assets/icons/assurance.png');

  /// File path: assets/icons/bill.png
  AssetGenImage get bill => const AssetGenImage('assets/icons/bill.png');

  /// File path: assets/icons/box.svg
  SvgGenImage get box => const SvgGenImage('assets/icons/box.svg');

  /// File path: assets/icons/contact.svg
  SvgGenImage get contact => const SvgGenImage('assets/icons/contact.svg');

  /// File path: assets/icons/credit.png
  AssetGenImage get credit => const AssetGenImage('assets/icons/credit.png');

  /// File path: assets/icons/electricity.png
  AssetGenImage get electricity =>
      const AssetGenImage('assets/icons/electricity.png');

  /// File path: assets/icons/history.png
  AssetGenImage get history => const AssetGenImage('assets/icons/history.png');

  /// File path: assets/icons/home.svg
  SvgGenImage get home => const SvgGenImage('assets/icons/home.svg');

  /// File path: assets/icons/merchants.png
  AssetGenImage get merchants =>
      const AssetGenImage('assets/icons/merchants.png');

  /// File path: assets/icons/more-menu.png
  AssetGenImage get moreMenu =>
      const AssetGenImage('assets/icons/more-menu.png');

  /// File path: assets/icons/more.svg
  SvgGenImage get more => const SvgGenImage('assets/icons/more.svg');

  /// File path: assets/icons/notification.png
  AssetGenImage get notification =>
      const AssetGenImage('assets/icons/notification.png');

  /// File path: assets/icons/request.png
  AssetGenImage get request => const AssetGenImage('assets/icons/request.png');

  /// File path: assets/icons/statistic.svg
  SvgGenImage get statistic => const SvgGenImage('assets/icons/statistic.svg');

  /// File path: assets/icons/top-up.png
  AssetGenImage get topUp => const AssetGenImage('assets/icons/top-up.png');

  /// File path: assets/icons/transfer.png
  AssetGenImage get transfer =>
      const AssetGenImage('assets/icons/transfer.png');

  /// File path: assets/icons/voucher.png
  AssetGenImage get voucher => const AssetGenImage('assets/icons/voucher.png');

  /// File path: assets/icons/wifi.png
  AssetGenImage get wifi => const AssetGenImage('assets/icons/wifi.png');

  /// List of all assets
  List<dynamic> get values => [
        assurance,
        bill,
        box,
        contact,
        credit,
        electricity,
        history,
        home,
        merchants,
        moreMenu,
        more,
        notification,
        request,
        statistic,
        topUp,
        transfer,
        voucher,
        wifi
      ];
}

class $AssetsImageGen {
  const $AssetsImageGen();

  /// File path: assets/image/bottom-arrow.svg
  SvgGenImage get bottomArrow =>
      const SvgGenImage('assets/image/bottom-arrow.svg');

  /// File path: assets/image/circle.svg
  SvgGenImage get circle => const SvgGenImage('assets/image/circle.svg');

  /// File path: assets/image/person1.png
  AssetGenImage get person1 => const AssetGenImage('assets/image/person1.png');

  /// File path: assets/image/person2.png
  AssetGenImage get person2 => const AssetGenImage('assets/image/person2.png');

  /// File path: assets/image/person3.png
  AssetGenImage get person3 => const AssetGenImage('assets/image/person3.png');

  /// File path: assets/image/person4.png
  AssetGenImage get person4 => const AssetGenImage('assets/image/person4.png');

  /// File path: assets/image/person5.png
  AssetGenImage get person5 => const AssetGenImage('assets/image/person5.png');

  /// File path: assets/image/person6.png
  AssetGenImage get person6 => const AssetGenImage('assets/image/person6.png');

  /// File path: assets/image/person7.png
  AssetGenImage get person7 => const AssetGenImage('assets/image/person7.png');

  /// File path: assets/image/profil1.png
  AssetGenImage get profil1 => const AssetGenImage('assets/image/profil1.png');

  /// File path: assets/image/up-arrow.svg
  SvgGenImage get upArrow => const SvgGenImage('assets/image/up-arrow.svg');

  /// List of all assets
  List<dynamic> get values => [
        bottomArrow,
        circle,
        person1,
        person2,
        person3,
        person4,
        person5,
        person6,
        person7,
        profil1,
        upArrow
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImageGen image = $AssetsImageGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
