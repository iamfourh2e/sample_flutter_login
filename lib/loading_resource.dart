import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc_sample/login.dart';
import 'package:provider/provider.dart';

import 'home.dart';
import 'provider/app_state.dart';

class LoadingResource extends StatefulWidget {
  const LoadingResource({Key? key}) : super(key: key);

  @override
  State<LoadingResource> createState() => _LoadingResourceState();
}

class _LoadingResourceState extends State<LoadingResource> {
  @override
  Widget build(BuildContext context) {
    UserModel? userModel = context.watch<AppState>().user;
    return userModel != null
        ? const Entry.scale(child: Home())
        : const LoginPage();
  }
}
