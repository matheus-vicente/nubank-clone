import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  /// Creates a box with personal paddings values.
  ///
  /// The default is left = 20, top = 20, right = 20, bottom = 16.
  final Widget child;

  const Box({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 16),
      child: child,
    );
  }
}
