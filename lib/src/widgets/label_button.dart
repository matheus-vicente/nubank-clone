import 'package:flutter/material.dart';
import 'package:nubank_clone/src/style/colors.dart';

class LabelButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final void Function() onPressed;

  const LabelButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 86,
      height: 116,
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              elevation: 0,
              shape: const CircleBorder(),
              fixedSize: const Size(62, 62),
              backgroundColor: AppColors.grey,
              foregroundColor: AppColors.grey100,
            ),
            child: Icon(
              icon,
              color: AppColors.black,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
