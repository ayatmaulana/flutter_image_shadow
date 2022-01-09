import 'dart:ui';
import 'package:flutter/material.dart';

@immutable
class ImageShadow extends StatelessWidget {
  late double blurRadius;
  late double borderRadius;
  late double scale;
  late Offset offset;
  late Image image;

  ImageShadow({
    Key? key,
    this.blurRadius = 8.0,
    this.borderRadius = 0.0,
    this.scale = 1.0,
    this.offset = const Offset(8.0, 8.0),
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      key: key,
      alignment: Alignment.center,
      children: <Widget>[
        Transform.translate(
          offset: offset,
          child: Transform.scale(
              scale: scale,
              child: Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(borderRadius),
                      child: image),
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(borderRadius),
                      clipBehavior: Clip.hardEdge,
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                            sigmaX: blurRadius, sigmaY: blurRadius),
                        child: Container(
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ),
        ClipRRect(
            borderRadius: BorderRadius.circular(borderRadius), child: image)
      ],
    );
  }
}
