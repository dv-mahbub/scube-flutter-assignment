import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:scube_flutter_assignment/core/theme/theme.dart';
import 'package:scube_flutter_assignment/features/widgets/default_text_field.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isObscure = true;

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Gap(25),
            Text("Login", style: context.textStyle.headlineLarge),
            Gap(25),
            DefaultTextField(
              controller: usernameController,
              isWhiteBackground: true,
              hintText: "Username",
              height: 60,
              maxLines: 1,
            ),
            Gap(25),
            DefaultTextField(
              controller: passwordController,
              isWhiteBackground: true,
              hintText: "Password",
              height: 60,
              maxLines: 1,
              obscureText: isObscure,
              suffixIcon: IconButton(
                icon: Icon(isObscure ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
              ),
            ),
            Gap(15),
            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {},
                child: Text(
                  "Forgot Password?",
                  style: context.textStyle.titleMedium.copyWith(
                    color: context.color.text.grey,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
            Gap(25),
            FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(65)),
              child: Text("Login", style: context.textStyle.titleMedium.copyWith(color: context.color.text.secondary)),
            ),
            Gap(25),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have any account?', style: context.textStyle.bodyMedium),
                  Gap(5),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Register Now',
                      style: context.textStyle.bodyMedium.copyWith(
                        color: context.color.text.primaryBlue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
