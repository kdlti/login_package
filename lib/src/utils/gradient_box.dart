import 'package:flutter/material.dart';

class GradientBox extends StatelessWidget {
  final AlignmentGeometry begin;
  final AlignmentGeometry end;
  final List<Color>? colors;

  const GradientBox({
    super.key,
    this.colors,
    this.begin = Alignment.topLeft,
    this.end = Alignment.bottomRight,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors!,
          begin: begin,
          end: end,
          stops: const [0, 1],
        ),
      ),
      child: const SizedBox.expand(),
    );
  }
}
