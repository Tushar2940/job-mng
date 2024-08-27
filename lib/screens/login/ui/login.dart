import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:job_mng/customewidget/global_button.dart';
import 'package:job_mng/customewidget/global_text_field.dart';
import 'package:job_mng/screens/dashboard/ui/dashboard.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  static const path = '/login';

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(  16.0),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Image.asset("assets/image/logo.jpeg"),
                    const Gap(40),
                    GlobalTextFormField(
                      labelText: 'Email',
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                    ),
                    GlobalTextFormField(
                      labelText: 'Password',
                      controller: passwordController,
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                    const Gap(40),
                  ],
                ),
              ),
              GlobalButton(text: "Login", onPressed: () {
                context.go(Dashboard.path);
              },),
            ],
          ),
        ),
      ),
    );
  }
}
