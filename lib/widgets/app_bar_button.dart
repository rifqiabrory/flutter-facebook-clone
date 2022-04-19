import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final IconData icon;
  final double size;
  final VoidCallback onPressed;
  const AppBarButton(
      {Key? key,
      required this.icon,
      required this.size,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: 40.0,
      margin: const EdgeInsets.all(6.0),
      decoration: const BoxDecoration(
        color: Color(0xFFe6eef5),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(icon),
        iconSize: size,
        color: Colors.black,
        onPressed: onPressed,
      ),
    );
  }
}
