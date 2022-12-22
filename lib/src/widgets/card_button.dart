import 'package:flutter/material.dart';

import 'package:nubank_clone/src/style/colors.dart';

class CardButton extends StatelessWidget {
  final Widget child;
  final void Function() onPressed;

  const CardButton({
    super.key,
    required this.child,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: AppColors.grey,
        foregroundColor: AppColors.grey300,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
      ),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 240),
        child: child,
      ),
    );
  }
}
