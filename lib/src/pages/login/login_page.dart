import 'package:flutter/material.dart';

import '../../config/my_theme.dart';
import 'widgets/header.dart';
import 'widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: MyTheme.gradient,
            ),
          ),
          Column(
            children: [
              Column(
                children: const [
                  Header(),
                  LoginForm(),
                  Text('SSO'),
                  Text('Register'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
