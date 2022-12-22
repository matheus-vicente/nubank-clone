import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:nubank_clone/src/screens/home/widgets/body.dart';
import 'package:nubank_clone/src/screens/home/widgets/header.dart';
import 'package:nubank_clone/src/style/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: AppColors.primary,
      ),
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: const [
                Header(),
                Body(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
