import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/views/widgets/default_textformfield.dart';
import 'package:flutter_ecommerce/views/widgets/main_button.dart';

import '../../utilities/enums.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  var _authType = AuthFormType.login;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _authType == AuthFormType.login
                    ? Text('Login',
                        style: Theme.of(context).textTheme.headline4)
                    : Text('Register',
                        style: Theme.of(context).textTheme.headline4),
                const SizedBox(
                  height: 60,
                ),
                DefaultTFF(
                  labelText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailController,
                  isPassword: false,
                  validator: () {},
                  onFieldSubmitted: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
                DefaultTFF(
                  labelText: 'password',
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailController,
                  isPassword: false,
                  validator: () {},
                  onFieldSubmitted: () {},
                ),
                _authType == AuthFormType.register
                    ? Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: DefaultTFF(
                          labelText: 'Confirm password',
                          keyboardType: TextInputType.visiblePassword,
                          controller: _passwordController,
                          isPassword: true,
                          validator: () {},
                          onFieldSubmitted: () {},
                        ),
                      )
                    : const SizedBox(
                        height: 20,
                      ),
                if (_authType == AuthFormType.login)
                  Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forget you password?',
                          ))),
                const SizedBox(
                  height: 20,
                ),
                MainButton(
                    text:
                        _authType == AuthFormType.login ? 'Login' : 'Register',
                    onTap: () {}),
                Align(
                    alignment: Alignment.center,
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            if (_authType == AuthFormType.login) {
                              _authType = AuthFormType.register;
                            } else {
                              _authType = AuthFormType.login;
                            }
                          });
                        },
                        child: Text(
                          _authType == AuthFormType.login
                              ? 'Register now'
                              : 'Already have an account!',
                        ))),
                const SizedBox(
                  height: 50,
                ),
                 Align(
                    alignment: Alignment.center,
                    child: Text( _authType == AuthFormType.login ?'Or login with social account':'Or Signup with social account')),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.white,
                      height: 60,
                      width: 60,
                      child: GestureDetector(
                        child: Image.asset(
                          'assets/images/Google icon.png',
                        ),
                        onTap: () {},
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      color: Colors.white,
                      height: 60,
                      width: 60,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.facebook),
                        iconSize: 40,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
