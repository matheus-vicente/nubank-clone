import 'dart:developer';

import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nubank_clone/src/style/colors.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      padding: const EdgeInsets.fromLTRB(20, 4, 20, 24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all<Size>(
                    const Size(40, 40),
                  ),
                  shape: MaterialStateProperty.all<CircleBorder>(
                    const CircleBorder(),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                    AppColors.primaryLight,
                  ),
                ),
                child: Icon(
                  Icons.account_circle,
                  color: AppColors.white,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      BootstrapIcons.eye,
                      color: AppColors.white,
                    ),
                    onPressed: () => log("Clicou 2"),
                  ),
                  IconButton(
                    icon: Icon(
                      BootstrapIcons.question_circle,
                      color: AppColors.white,
                    ),
                    onPressed: () => log("Clicou 3"),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.supervisor_account_rounded,
                      color: AppColors.white,
                    ),
                    onPressed: () => log("Clicou 4"),
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: Text(
                  "Olá, Matheus",
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
