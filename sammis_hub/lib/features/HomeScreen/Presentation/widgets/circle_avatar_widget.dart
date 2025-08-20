import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  CircleAvatarWidget({
    super.key,
    this.backgroundColor,
    this.backgroundImage,
    this.child,
    this.foregroundColor,
    this.radius,
    this.borderColor,
    this.borderWidth,
  });

  final Color? backgroundColor;
  final Widget? child;
  final Color? foregroundColor;
  final double? radius;
  final ImageProvider<Object>? backgroundImage;
  final Color? borderColor;
  final double? borderWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(borderWidth ?? 2), 
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: borderColor ?? Colors.black, 
      ),
      child: CircleAvatar(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        radius: radius,
        backgroundImage: backgroundImage,
        child: child,
      ),
    );
  }
}
