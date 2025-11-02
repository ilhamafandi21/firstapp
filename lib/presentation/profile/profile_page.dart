 
import 'dart:convert';

import 'package:firstapp/domain/auth/model/login_response.dart' as lr;
import 'package:firstapp/domain/auth/model/login_response.dart';
import 'package:firstapp/presentation/profile/widgets/profile_card_widget.dart';
import 'package:firstapp/utils/constants.dart' as constants;
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
lr.LoginResponse ? _loginResponse;

@override
  void initState() {
    // TODO: implement initState

    final _data = GetStorage().read(constants.USER_LOCAL_KEY);
    
    _loginResponse = LoginResponse.fromJson(jsonDecode(_data));
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
        _loginResponse?.accessToken ?? 'null'
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
