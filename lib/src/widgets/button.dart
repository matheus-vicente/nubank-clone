import 'package:flutter/material.dart';
import 'package:nubank_clone/src/style/colors.dart';

enum Variants {
  primary,
  secondary,
}

class Button extends StatelessWidget {
  final String text;
  final Variants? variant;
  final void Function() onPressed;

  const Button({
    super.key,
    required this.text,
    required this.onPressed,
    this.variant = Variants.primary,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor:
            variant == Variants.primary ? AppColors.primary : AppColors.grey,
        foregroundColor: variant == Variants.primary
            ? AppColors.primaryLight
            : AppColors.grey100,
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color:
              variant == Variants.primary ? AppColors.white : AppColors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
