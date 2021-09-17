import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Schimmer extends StatelessWidget {
  final double height;
  final double Width;
  final ShapeBorder shape;

  const Schimmer.Rectangle({
    required this.height,
    required this.Width,
    this.shape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.zero,
    ),
  });
  const Schimmer.circular({
    required this.height,
    required this.Width,
    this.shape = const CircleBorder(),
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      gradient: LinearGradient(
        colors: [
          Colors.grey[400]!,
          Colors.grey[100]!,
        ],
      ),
      child: Container(
        height: height,
        width: Width,
        decoration: ShapeDecoration(
          color: Colors.grey,
          shape: shape,
        ),
      ),
    );
  }
}
