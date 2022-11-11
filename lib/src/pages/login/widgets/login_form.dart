import 'package:flutter/material.dart';

import '../../../config/my_theme.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        _buildCardForm(),
        _buildSubmitFormButton(),
      ],
    );
  }

  Card _buildCardForm() => Card(
        margin: const EdgeInsets.only(
          bottom: 22.0,
          left: 22.0,
          right: 22.0,
        ),
        elevation: 2.0,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: const Padding(
          padding: EdgeInsets.only(
            top: 20.0,
            bottom: 50.0,
            left: 28.0,
            right: 28.0,
          ),
          child: FormInput(),
        ),
      );

  Container _buildSubmitFormButton() => Container(
        width: 250.0,
        height: 50.0,
        decoration: _boxDecoration(),
        child: TextButton(
          onPressed: () {},
          child: const Text(
            'LOGIN',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      );

  BoxDecoration _boxDecoration() {
    final colors = MyTheme.blackColor;

    boxShadowItem(Color color) => BoxShadow(
          color: color,
          blurRadius: 10.0,
        );

    return BoxDecoration(
      borderRadius: const BorderRadius.all(
        Radius.circular(5.0),
      ),
      boxShadow: [
        boxShadowItem(colors),
      ],
      color: colors,
    );
  }
}

class FormInput extends StatelessWidget {
  final _colors = Colors.black;

  const FormInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildUsername(),
        _buildDivider(),
        _buildPassword(),
      ],
    );
  }

  Divider _buildDivider() {
    return Divider(
      height: 22,
      thickness: 1,
      indent: 13,
      endIndent: 13,
      color: _colors,
    );
  }

  TextStyle _textStyle() => TextStyle(
        fontWeight: FontWeight.w500,
        color: _colors,
      );

  TextFormField _buildPassword() => TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          labelStyle: _textStyle(),
          labelText: 'Password',
          hintText: 'Please entry your password',
          icon: Icon(
            Icons.lock,
            size: 24.0,
            color: _colors,
          ),
        ),
        obscureText: true,
      );

  TextFormField _buildUsername() => TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          labelStyle: _textStyle(),
          labelText: 'Email',
          hintText: 'Please entry your email',
          icon: Icon(
            Icons.email,
            size: 24.0,
            color: _colors,
          ),
        ),
      );
}
