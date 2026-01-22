import 'package:flutter/material.dart';
import 'package:scube_flutter_assignment/core/theme/theme.dart';
import 'package:scube_flutter_assignment/features/login/presentation/widget/login_body.dart';
import 'package:scube_flutter_assignment/features/splash/presentation/widget/splash_body.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: const Duration(seconds: 2));

    WidgetsBinding.instance.addPostFrameCallback((_) {
      showModalBottomSheet(
        context: context,
        isDismissible: false,
        transitionAnimationController: _animationController,
        builder: (context) {
          return const LoginBody();
        },
      );
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: context.color.primaryBlue, body: SplashBody());
  }
}
