import 'package:firstapp/presentation/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
// import 'router/router.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

