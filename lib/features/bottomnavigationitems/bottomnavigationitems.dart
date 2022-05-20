import 'package:flutter/material.dart';

class BottomNavigationItems extends StatelessWidget {
  const BottomNavigationItems({
    Key? key,
    required this.onpress,
    required this.color,
    required this.icon,
  }) : super(key: key);
  final VoidCallback onpress;
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onpress,
      icon: Icon(
        icon,
        size: 30,
        color: color,
      ),
    );
  }
}
