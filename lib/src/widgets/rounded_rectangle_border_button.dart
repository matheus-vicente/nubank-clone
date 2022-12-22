import 'package:flutter/material.dart';

import 'package:nubank_clone/src/style/colors.dart';

class RoundedRectangleBorderButton extends StatelessWidget {
  final String label;
  final IconData? icon;
  final void Function() onPressed;

  const RoundedRectangleBorderButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
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
      child: Row(
        children: [
          if (icon != null)
            Container(
              margin: const EdgeInsets.only(right: 16),
              child: Icon(icon),
            ),
          Expanded(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 13,
                color: AppColors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
