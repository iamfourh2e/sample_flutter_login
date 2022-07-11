import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc_sample/provider/app_state.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomSheet: Container(
        height: 50,
        width: size.width,
        child: MaterialButton(
          color: Colors.blue,
          onPressed: () {
            UserModel user = UserModel(id: "i123d", name: "reaksmey kevin");
            context.read<AppState>().user = user;
          },
          child: const Text("Login now"),
        ),
      ),
      body: const Center(child: Text("login page")),
    );
  }
}
