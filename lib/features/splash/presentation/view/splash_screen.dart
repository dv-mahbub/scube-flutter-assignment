import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scube_flutter_assignment/core/service/router/routes.dart';
import 'package:scube_flutter_assignment/core/theme/theme.dart';
import 'package:scube_flutter_assignment/features/splash/presentation/widget/splash_body.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    decideNextRoute();
    super.initState();
  }

  void decideNextRoute() {
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        context.go(Routes.login);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: context.color.primaryBlue, body: const SplashBody());
  }
}
