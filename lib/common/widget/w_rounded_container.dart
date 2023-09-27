import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Color? color;
  final double radiusValue;
  final BorderRadiusGeometry? radius;

  const RoundedContainer(
      {super.key,
      required this.child,
      this.padding,
      this.margin,
      this.color,
      this.radiusValue = 10,
      this.radius});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: radius ?? BorderRadius.circular(radiusValue),
        color: color,
      ),
      child: child,
    );
  }
}
