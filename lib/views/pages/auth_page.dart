import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utilities/routes.dart';
import 'package:flutter_ecommerce/views/widgets/default_textformfield.dart';
import 'package:flutter_ecommerce/views/widgets/main_button.dart';

import '../../utilities/assets.dart';
import '../../utilities/enums.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  final _confirmPasswordFocusNode = FocusNode();
  var _authType = AuthFormType.login;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return ('Invalid Email');
                    }
                  },
                  focusNode: _emailFocusNode,
                  onFieldSubmitted: (value) {
                    if (_emailController.text.isNotEmpty) {
                      FocusScope.of(context).requestFocus(_passwordFocusNode);
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                DefaultTFF(
                  labelText: 'password',
                  keyboardType: TextInputType.emailAddress,
                  controller: _passwordController,
                  isPassword: true,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return ('Invalid Password');
                    }
                  },
                  focusNode: _passwordFocusNode,
                  onFieldSubmitted: (value) {
                    if (_formKey.currentState!.validate()) {
                      FocusScope.of(context)
                          .requestFocus(_confirmPasswordFocusNode);
                    }
                  },
                ),
                _authType == AuthFormType.register
                    ? Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: DefaultTFF(
                          labelText: 'Confirm password',
                          keyboardType: TextInputType.visiblePassword,
                          controller: _confirmPasswordController,
                          isPassword: true,
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return ('not matched password');
                            }
                          },
                          onFieldSubmitted: () {
                            if (_formKey.currentState!.validate()) {
                              setState(() {
                                _authType = AuthFormType.login;
                              });
                            } else {
                              null;
                            }
                          },
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
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.of(context)
                            .pushNamed(AppRoutes.homePageRoute);
                      } else {
                        null;
                      }
                    }),
                Align(
                    alignment: Alignment.center,
                    child: TextButton(
                        onPressed: () {
                          _formKey.currentState!.reset();
                          _emailController.clear();
                          _passwordController.clear();
                          _emailFocusNode.unfocus();
                          _passwordFocusNode.unfocus();
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
                SizedBox(
                  height: size.height * 0.06,
                ),
                Align(
                    alignment: Alignment.center,
                    child: Text(_authType == AuthFormType.login
                        ? 'Or login with social account'
                        : 'Or Sign Up with social account')),
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
                          AppAssists.googleIcon,
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
