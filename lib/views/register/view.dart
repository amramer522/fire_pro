import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
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
            const SizedBox(
              height: 100,
            ),
            Image.network(
              "https://img.freepik.com/free-vector/register-button_53876-43916.jpg?w=1380&t=st=1699811867~exp=1699812467~hmac=f6a30bbea94a37260f69eff43bd2fb4e0e559f20e35b5ce85df61912f3e1cee7",
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
              decoration: const InputDecoration(labelText: "Enter Your Password"),
            ),
            const SizedBox(height: 32),
            FilledButton(
              onPressed: () {},
              child: const Text("Register"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("login"),
            )
          ],
        ),
      ),
    );
  }
}
