import 'package:flutter/material.dart';

class ColoredBg extends StatelessWidget {
  final Widget child;
  final double borderRadius;
  final Color? color;
  final EdgeInsetsGeometry? padding;

  const ColoredBg({
    super.key,
    required this.child,
    this.borderRadius = 12,
    this.color,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: color ?? Color(0xFFF7F8FB), // accurate subtle grey from the UI
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: child,
    );
  }
}
