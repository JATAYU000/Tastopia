import 'package:flutter/material.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

   @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.13),
      child: Form(
        child: Column(
          children: [
            Spacer(),
            TextFormField(
              decoration: InputDecoration(
                hintText: "USERNAME",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "EMAIL",
                ),
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "PASSWORD",
              ),
            ),
            Spacer(flex: 2)
          ],
        ),
      ),
    );
  }
}