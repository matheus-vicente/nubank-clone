import 'package:flutter/material.dart';

import 'package:nubank_clone/src/style/colors.dart';
import 'package:nubank_clone/src/widgets/button.dart';

class AppImageCard extends StatelessWidget {
  final Widget image;
  final String title;
  final String text;
  final String buttonTitle;

  const AppImageCard({
    super.key,
    required this.image,
    required this.title,
    required this.text,
    required this.buttonTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      constraints: const BoxConstraints(maxWidth: 240),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            child: image,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    text,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Button(
                    text: buttonTitle,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
