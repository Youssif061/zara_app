import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgActiveIcon extends StatelessWidget {
  final String path;
  final Color? color;
  const SvgActiveIcon({super.key, required this.path, this.color});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      colorFilter:
          color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
    );
  }
}
