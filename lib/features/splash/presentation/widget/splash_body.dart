import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:scube_flutter_assignment/core/theme/theme.dart';
import 'package:scube_flutter_assignment/features/widgets/logo.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(70),
            Logo(),
            Gap(20),
            Text("SCUBE", style: context.textStyle.headlineLarge.copyWith(color: context.color.text.secondary)),
            Text(
              'Control & Monitoring System',
              style: context.textStyle.titleLarge.copyWith(color: context.color.text.secondary),
            ),
          ],
        ),
      ),
    );
  }
}
