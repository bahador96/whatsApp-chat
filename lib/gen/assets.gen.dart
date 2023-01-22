/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/profile1.jpg
  AssetGenImage get profile1 =>
      const AssetGenImage('assets/images/profile1.jpg');

  /// File path: assets/images/profile2.jpg
  AssetGenImage get profile2 =>
      const AssetGenImage('assets/images/profile2.jpg');

  /// File path: assets/images/profile3.jpg
  AssetGenImage get profile3 =>
      const AssetGenImage('assets/images/profile3.jpg');

  /// File path: assets/images/profile4.jpg
  AssetGenImage get profile4 =>
      const AssetGenImage('assets/images/profile4.jpg');

  /// File path: assets/images/profile5.jpg
  AssetGenImage get profile5 =>
      const AssetGenImage('assets/images/profile5.jpg');

  /// File path: assets/images/profile6.jpg
  AssetGenImage get profile6 =>
      const AssetGenImage('assets/images/profile6.jpg');

  /// File path: assets/images/profile7.jpg
  AssetGenImage get profile7 =>
      const AssetGenImage('assets/images/profile7.jpg');

  /// File path: assets/images/profile8.jpg
  AssetGenImage get profile8 =>
      const AssetGenImage('assets/images/profile8.jpg');

  /// File path: assets/images/profile9.jpg
  AssetGenImage get profile9 =>
      const AssetGenImage('assets/images/profile9.jpg');

  /// File path: assets/images/status1.jpg
  AssetGenImage get status1 => const AssetGenImage('assets/images/status1.jpg');

  /// File path: assets/images/status2.jpg
  AssetGenImage get status2 => const AssetGenImage('assets/images/status2.jpg');

  /// File path: assets/images/status3.jpg
  AssetGenImage get status3 => const AssetGenImage('assets/images/status3.jpg');

  /// File path: assets/images/status4.jpg
  AssetGenImage get status4 => const AssetGenImage('assets/images/status4.jpg');

  /// File path: assets/images/status5.jpg
  AssetGenImage get status5 => const AssetGenImage('assets/images/status5.jpg');

  /// File path: assets/images/status6.jpg
  AssetGenImage get status6 => const AssetGenImage('assets/images/status6.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
        profile1,
        profile2,
        profile3,
        profile4,
        profile5,
        profile6,
        profile7,
        profile8,
        profile9,
        status1,
        status2,
        status3,
        status4,
        status5,
        status6
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
