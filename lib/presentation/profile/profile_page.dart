import 'package:firstapp/domain/auth/model/login_response.dart';
import 'package:firstapp/presentation/profile/widgets/profile_card_widget.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key, required this.loginResponse});

  final LoginResponse loginResponse;

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
        widget.loginResponse.firstName ?? 'null'
      )),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfileCardWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
