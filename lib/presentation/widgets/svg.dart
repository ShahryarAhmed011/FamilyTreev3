import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgImage extends StatelessWidget {
  final String fileName;
  final double? width;
  final double? height;
  final BoxFit fit;
  final ColorFilter? colorFilter;

  const SvgImage.asset(
      this.fileName, {
        super.key,
        this.width,
        this.colorFilter,
        this.height,
        this.fit = BoxFit.contain,
      });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/images/svg/$fileName.svg",
      width: width,
      height: height,
      colorFilter:colorFilter ,
      fit: fit,
    );
  }
}
