// import 'package:auto_route/auto_route.dart';
// import 'package:dartz/dartz.dart';
import 'package:firstapp/application/auth/cubit/auth_cubit.dart';
// import 'package:firstapp/infrastructure/auth/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AuthCubit(),
        child: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthError) {
              print(state.errorMessage);
            } else if (state is AuthLoading) {
              print('loading ...');
            } else if (state is AuthSignSuccess) {
              print(state.dataLogin);
            }
          },
          builder: (context, state) {
            return Container(
              padding: const EdgeInsets.all(20.0),
              color: Colors.grey.shade800,
              child: ListView(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const SizedBox(height: 50),
                      const SizedBox(width: 200),
                      const SizedBox(height: 50),
                      ListTile(
                        title: TextField(
                          controller: _emailController,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: "Email address:",
                            hintStyle: TextStyle(color: Colors.white70),
                            border: InputBorder.none,
                            icon: Icon(Icons.email, color: Colors.white30),
                          ),
                        ),
                      ),
                      Divider(color: Colors.grey.shade600),
                      ListTile(
                        title: TextField(
                          controller: _passwordController,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: "Password:",
                            hintStyle: TextStyle(color: Colors.white70),
                            border: InputBorder.none,
                            icon: Icon(Icons.lock, color: Colors.white30),
                          ),
                        ),
                      ),
                      Divider(color: Colors.grey.shade600),
                      const SizedBox(height: 20),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: (state is AuthLoading)
                                ? _loginButtonLoading()
                                : _loginButton(context),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      Text(
                        'Forgot your password?',
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  ElevatedButton _loginButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
      onPressed: () {
        // Panggil Cubit
        context.read<AuthCubit>().signUser(
          _emailController.text,
          _passwordController.text,
        );
      },
      child: const Text(
        'Login',
        style: TextStyle(color: Colors.white70, fontSize: 16.0),
      ),
    );
  }

  ElevatedButton _loginButtonLoading() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
      onPressed: null,
      child: CircularProgressIndicator(),
    );
  }
}
