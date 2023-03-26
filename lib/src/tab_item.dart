import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final Widget? icon;
  final Widget? iconSelected;
  final Widget? label;
  final double? iconSize;
  final bool isActive;
  final Color? activeColor;
  final Color? inactiveColor;
  final Widget? child;

  const TabItem({
    Key? key,
    required this.isActive,
    this.icon,
    this.iconSelected,
    this.label,
    this.iconSize = 24,
    this.activeColor = Colors.deepPurpleAccent,
    this.inactiveColor = Colors.black,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => child ?? _buildDefaultTab();

  Widget _buildDefaultTab() {
    return isActive ? iconSelected! : icon!;
  }
}
