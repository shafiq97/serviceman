/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsImageGen {
  const $AssetsImageGen();

  SvgGenImage get calendar => const SvgGenImage('assets/image/calendar.svg');
  SvgGenImage get carpenter => const SvgGenImage('assets/image/carpenter.svg');
  SvgGenImage get chat => const SvgGenImage('assets/image/chat.svg');
  AssetGenImage get deltaHomeslogo =>
      const AssetGenImage('assets/image/delta_homeslogo.png');
  SvgGenImage get doctor => const SvgGenImage('assets/image/doctor.svg');
  SvgGenImage get electrician =>
      const SvgGenImage('assets/image/electrician.svg');
  SvgGenImage get error => const SvgGenImage('assets/image/error.svg');
  SvgGenImage get faq => const SvgGenImage('assets/image/faq.svg');
  SvgGenImage get feedback => const SvgGenImage('assets/image/feedback.svg');
  SvgGenImage get hammer => const SvgGenImage('assets/image/hammer.svg');
  SvgGenImage get handymanTools =>
      const SvgGenImage('assets/image/handyman_tools.svg');
  SvgGenImage get home => const SvgGenImage('assets/image/home.svg');
  SvgGenImage get idCard => const SvgGenImage('assets/image/id card.svg');
  SvgGenImage get maid => const SvgGenImage('assets/image/maid.svg');
  SvgGenImage get mason => const SvgGenImage('assets/image/mason.svg');
  SvgGenImage get mechanic => const SvgGenImage('assets/image/mechanic.svg');
  SvgGenImage get notification =>
      const SvgGenImage('assets/image/notification.svg');
  SvgGenImage get painter => const SvgGenImage('assets/image/painter.svg');
  SvgGenImage get plumber => const SvgGenImage('assets/image/plumber.svg');
  SvgGenImage get profile => const SvgGenImage('assets/image/profile.svg');
  SvgGenImage get river => const SvgGenImage('assets/image/river.svg');
  SvgGenImage get search => const SvgGenImage('assets/image/search.svg');
  SvgGenImage get thumbsUp => const SvgGenImage('assets/image/thumbs_up.svg');
  SvgGenImage get tiles => const SvgGenImage('assets/image/tiles.svg');
  SvgGenImage get undrawSweetHome =>
      const SvgGenImage('assets/image/undraw_sweet_home.svg');
  SvgGenImage get vacuumCleaner =>
      const SvgGenImage('assets/image/vacuum_cleaner.svg');
}

class $AssetsJsonGen {
  const $AssetsJsonGen();

  String get app => 'assets/json/app.json';
}

class Assets {
  Assets._();

  static const $AssetsImageGen image = $AssetsImageGen();
  static const $AssetsJsonGen json = $AssetsJsonGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
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
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
    );
  }

  String get path => _assetName;
}
