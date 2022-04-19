import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final Widget child;
  const GradientButton({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return const RadialGradient(
          center: Alignment.topLeft,
          radius: 1,
          colors: <Color>[Colors.blue, Colors.pinkAccent],
          tileMode: TileMode.clamp,
        ).createShader(bounds);
      },
    );
  }
}
