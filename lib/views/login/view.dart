import 'package:fire_pro/views/home/view.dart';
import 'package:fire_pro/views/register/view.dart';
import 'package:flutter/material.dart';

import '../../core/logic/helper_methods.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const SizedBox(height: 100),
            Image.network(
              "https://img.freepik.com/free-vector/access-control-system-abstract-concept_335657-3180.jpg?w=1380&t=st=1699811717~exp=1699812317~hmac=257126879ee25d23a4adbce59b49d9452469cb99202c2cec8f9f25de63f559a4",
              height: 200,
              width: 200,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(labelText: "Enter Your Email"),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: "Enter Your Passwor"),
            ),
            const SizedBox(height: 32),
            FilledButton(
              onPressed: () {
                navigateTo(const HomeView(), keepHistory: false);
              },
              child: const Text("Login"),
            ),
            TextButton(
              onPressed: () {
                navigateTo(const RegisterView());
              },
              child: const Text("Register"),
            )
          ],
        ),
      ),
    );
  }
}
