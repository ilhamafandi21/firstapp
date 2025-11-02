import 'package:firstapp/application/auth/cubit/auth_cubit.dart';
import 'package:firstapp/presentation/home/home.dart';
import 'package:firstapp/presentation/profile/profile_page.dart';
import 'package:firstapp/presentation/sign_in/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firstapp/utils/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit()..loadUserFromLocal(),
      child: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          // TODO: implement listener

          if(state is AuthSignSuccess){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
          }else if(state is AuthError){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignInPage()));
          }
        },
        child: Scaffold(body: Center(child: CircularProgressIndicator())),
      ),
    );
  }
}
